# 2026-09-27T12:33:08.463743900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

comp.build()

comp.build()

status = comp.clean()

comp.build()

status = comp.clean()

comp.build()

comp.build()

vitis.dispose()

vitis.dispose()

