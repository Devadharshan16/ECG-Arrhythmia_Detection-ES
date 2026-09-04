import vitis
client = vitis.create_client()
client.set_workspace("D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new")
plat = client.get_component("ecg_platform")
domain = plat.get_domain("standalone_ps7_cortexa9_0")
print("Setting STDOUT to UART1...")
bsp = domain.get_bsp_config()
domain.set_bsp_config({"os.stdout": "uart1"}) # Need to find correct name
plat.build()
