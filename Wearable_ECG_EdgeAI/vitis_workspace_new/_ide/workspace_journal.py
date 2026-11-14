# 2026-11-14T11:07:20.668253400
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

status = comp.clean()

comp.build()

status = comp.clean()

comp.build()

comp.build()

vitis.dispose()

