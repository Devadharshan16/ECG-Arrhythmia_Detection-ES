# 2026-09-22T23:21:40.665047100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.get_component(name="ecg_platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

vitis.dispose()

