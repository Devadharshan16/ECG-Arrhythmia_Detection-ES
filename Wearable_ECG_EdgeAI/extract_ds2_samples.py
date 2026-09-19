import numpy as np
from ecg_dataset import MITBIH_Dataset, DS2_TEST

INPUT_SCALE = 0.0385783575
INPUT_ZERO_POINT = 104

def quantize(x_float):
    q = np.round(x_float / INPUT_SCALE) + INPUT_ZERO_POINT
    q = np.clip(q, -128, 127)
    return q.astype(np.int8)

def main():

    print("=" * 60)
    print("Exporting complete DS2 dataset")
    print("=" * 60)

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
        "const int8_t ds2_all_samples[DS2_TOTAL_SAMPLES][90] = {"
    )

    labels = []

    for i in range(total):

        x, y = dataset[i]

        x_np = x.squeeze(0).numpy()

        q = quantize(x_np)

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