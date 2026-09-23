import os
import numpy as np
import torch
from model_cnn import TinyECG_CNN
from ecg_dataset import MITBIH_Dataset, DS2_TEST


def load_input_qparams(model_path="saved_models/tiny_ecg_qat.pth"):
    """Read input scale and zero_point directly from the trained QAT model's QuantStub.
    This guarantees the values exactly match what the FPGA hardware uses."""
    backend = torch.backends.quantized.supported_engines[0]
    torch.backends.quantized.engine = backend

    model = TinyECG_CNN()
    model.train()
    model.fuse_model()
    model.qconfig = torch.ao.quantization.get_default_qat_qconfig(backend)
    torch.ao.quantization.prepare_qat(model, inplace=True)
    model.eval()
    torch.ao.quantization.convert(model, inplace=True)
    model.load_state_dict(torch.load(model_path, weights_only=True))
    model.eval()

    scale = model.quant.scale
    zp = model.quant.zero_point
    if isinstance(scale, torch.Tensor):
        scale = scale.item()
    if isinstance(zp, torch.Tensor):
        zp = zp.item()

    return float(scale), int(zp)


def quantize(x_float, scale, zero_point):
    # HLS now expects uint8_t input in [0, 255] — matches PyTorch quint8.
    # e.g. QRS peak: round(x/scale)+104 = 140 -> sent as uint8(140).
    # HLS then computes: (int32_t)140 - 104 = 36. Correct.
    q = np.round(x_float / scale) + zero_point
    q = np.clip(q, 0, 255)
    return q.astype(np.uint8)

def main():

    print("=" * 60)
    print("Exporting complete DS2 dataset")
    print("=" * 60)

    # Load the exact scale and zero_point from the trained model
    INPUT_SCALE, INPUT_ZERO_POINT = load_input_qparams()
    print(f"Input scale     : {INPUT_SCALE:.10f}")
    print(f"Input zero_point: {INPUT_ZERO_POINT}")

    dataset = MITBIH_Dataset(
        data_dir="mitdb_data",
        patient_ids=DS2_TEST
    )

    total = len(dataset)

    print(f"Total DS2 beats: {total}")

    lines = []

    lines.append("/* Automatically generated - Complete DS2 dataset */")
    lines.append("#ifndef DS2_ALL_SAMPLES_H")
    lines.append("#define DS2_ALL_SAMPLES_H")
    lines.append("")
    lines.append("#include <stdint.h>")
    lines.append("")
    lines.append(f"#define DS2_TOTAL_SAMPLES {total}")
    lines.append("")

    lines.append(
        "const uint8_t ds2_all_samples[DS2_TOTAL_SAMPLES][90] = {"
    )

    labels = []

    for i in range(total):

        x, y = dataset[i]

        x_np = x.squeeze(0).numpy()

        q = quantize(x_np, INPUT_SCALE, INPUT_ZERO_POINT)

        row = ", ".join(str(int(v)) for v in q)

        lines.append(f"    {{ {row} }},")

        labels.append(int(y.item()))

        if (i + 1) % 1000 == 0:
            print(f"Processed {i + 1}/{total}")

    lines.append("};")
    lines.append("")

    lines.append(
        "const int ds2_all_labels[DS2_TOTAL_SAMPLES] = { "
        + ", ".join(map(str, labels))
        + " };"
    )

    lines.append("")
    lines.append("#endif")
    lines.append("")

    with open("ds2_all_samples.h", "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    print("\nSUCCESS")
    print("Created: ds2_all_samples.h")
    print(f"Total samples: {total}")
    print(f"Normal: {labels.count(0)}")
    print(f"Anomaly: {labels.count(1)}")


if __name__ == "__main__":
    main()