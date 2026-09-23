# 2026-09-22T23:01:16.724650700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

vitis.dispose()

