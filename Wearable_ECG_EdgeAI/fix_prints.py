with open('D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_app/src/helloworld.c', 'r') as f:
    lines = f.readlines()

for i in range(len(lines)):
    if '//' in lines[i] and 'print_str(' in lines[i]:
        # Comment out the next 2 lines if they are string literals or );
        if i+1 < len(lines) and '\"' in lines[i+1] and not lines[i+1].strip().startswith('//'):
            lines[i+1] = '// ' + lines[i+1]
        if i+2 < len(lines) and ');' in lines[i+2] and not lines[i+2].strip().startswith('//'):
            lines[i+2] = '// ' + lines[i+2]
            
with open('D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new/ecg_app/src/helloworld.c', 'w') as f:
    f.writelines(lines)
