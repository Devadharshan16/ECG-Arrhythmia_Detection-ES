# 2026-09-18T09:11:57.231776200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

status = comp.clean()

comp.build()

vitis.dispose()

vitis.dispose()

