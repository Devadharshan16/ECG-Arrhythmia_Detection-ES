with open('D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_app/src/helloworld.c', 'r') as f:
    text = f.read()

# 1. Update beat counts
text = text.replace('#define NUM_TEST_BEATS 150', '#define NUM_TEST_BEATS 1000')
text = text.replace('#define NUM_TEST_BEATS 80', '#define NUM_TEST_BEATS 1000')
text = text.replace('150 RANDOM DS2 BEATS', '1000 RANDOM DS2 BEATS')
text = text.replace('20 RANDOM DS2 BEATS', '1000 RANDOM DS2 BEATS')
text = text.replace('80 RANDOM DS2 BEATS', '1000 RANDOM DS2 BEATS')

# 2. Comment out the first loop printing
bad_loop = """    for (int i = 0; i < NUM_TEST_BEATS; i++) {

        print_str("Beat ");
        print_num(i + 1);

        print_str(" -> Dataset Index: ");

        print_num(selected_indices[i]);

        print_str("\\n");
    }"""
good_loop = """    for (int i = 0; i < NUM_TEST_BEATS; i++) {
        // Muted
    }"""
text = text.replace(bad_loop, good_loop)

# 3. Comment out multi-line anomaly prints
bad_gt1 = """        if (expected_class == 1) {

            print_str(
                "Ground Truth: ANOMALY\\n"
            );

        } else {"""
good_gt1 = """        if (expected_class == 1) {
            // Muted
        } else {"""
text = text.replace(bad_gt1, good_gt1)

bad_gt2 = """        } else {

            print_str(
                "Ground Truth: NORMAL\\n"
            );
        }"""
good_gt2 = """        } else {
            // Muted
        }"""
text = text.replace(bad_gt2, good_gt2)

# 4. Mute print_str, print_num, print_float, sleep inside the main loop
lines = text.split('\n')
in_main = False
for i in range(len(lines)):
    if 'for (int iter = 1; iter <= NUM_TEST_BEATS; iter++) {' in lines[i]:
        in_main = True
    if 'float accuracy =' in lines[i]:
        in_main = False
        
    if in_main:
        if 'print_str(' in lines[i] or 'print_num(' in lines[i] or 'print_float(' in lines[i] or 'sleep(1)' in lines[i]:
            if '[ERROR]' not in lines[i] and 'timeout' not in lines[i] and 'Iteration:' not in lines[i] and 'Dataset Index:' not in lines[i] and 'Progress:' not in lines[i] and 'beats completed' not in lines[i]:
                if not lines[i].lstrip().startswith('//'):
                    lines[i] = '// ' + lines[i]

text = '\n'.join(lines)

# Ensure progress printer is there
if 'Progress:' not in text:
    sleep_idx = text.rfind('//         sleep(1);')
    if sleep_idx != -1:
        prog = '        if (iter % 50 == 0) {\n            print_str("Progress: ");\n            print_num(iter);\n            print_str(" beats completed...\\n");\n        }\n'
        text = text[:sleep_idx] + prog + text[sleep_idx:]

with open('D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_app/src/helloworld.c', 'w') as f:
    f.write(text)
