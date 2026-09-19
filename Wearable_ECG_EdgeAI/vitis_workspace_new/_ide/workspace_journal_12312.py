# 2026-09-17T20:40:36.695867500
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

vitis.dispose()

