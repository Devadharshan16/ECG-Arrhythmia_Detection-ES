# 2026-09-22T22:25:56.223636500
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp = client.get_component(name="ecg_app")
comp.build()

vitis.dispose()

