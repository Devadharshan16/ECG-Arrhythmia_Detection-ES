import vitis
client = vitis.create_client()
client.set_workspace("D:/ECG-Embedded_System/Wearable_ECG_EdgeAI/vitis_workspace_new")
app = client.get_component("ecg_app")
print("Building the application...")
app.build()
print("Done!")
