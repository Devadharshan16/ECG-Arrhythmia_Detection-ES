# 2026-09-22T22:35:28.615960300
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

platform = client.get_component(name="ecg_platform")
status = platform.build()

vitis.dispose()

