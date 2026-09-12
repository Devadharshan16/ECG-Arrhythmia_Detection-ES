# 2026-09-05T16:32:34.066056200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

vitis.dispose()

