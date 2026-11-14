# 2026-11-13T10:51:21.581231700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

status = comp.clean()

comp.build()

comp.build()

vitis.dispose()

