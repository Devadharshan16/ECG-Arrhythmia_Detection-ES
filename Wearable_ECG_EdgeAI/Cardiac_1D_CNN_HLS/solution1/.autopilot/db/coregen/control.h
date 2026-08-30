// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of input_ecg
//        bit 31~0 - input_ecg[31:0] (Read/Write)
// 0x14 : Data signal of input_ecg
//        bit 31~0 - input_ecg[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of output_logits
//        bit 31~0 - output_logits[31:0] (Read/Write)
// 0x20 : Data signal of output_logits
//        bit 31~0 - output_logits[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_INPUT_ECG_DATA     0x10
#define CONTROL_BITS_INPUT_ECG_DATA     64
#define CONTROL_ADDR_OUTPUT_LOGITS_DATA 0x1c
#define CONTROL_BITS_OUTPUT_LOGITS_DATA 64
