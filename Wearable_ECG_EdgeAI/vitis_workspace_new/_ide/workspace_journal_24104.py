# 2026-09-20T16:13:47.309231500
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

vitis.dispose()

