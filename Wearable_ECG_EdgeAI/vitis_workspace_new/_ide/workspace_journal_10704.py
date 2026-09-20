# 2026-09-20T16:09:37.589691600
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp = client.get_component(name="ecg_app")
comp.build()

vitis.dispose()

