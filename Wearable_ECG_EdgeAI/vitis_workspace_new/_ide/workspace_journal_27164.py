# 2026-09-05T13:25:48.413692400
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

comp.build()

comp.build()

vitis.dispose()

