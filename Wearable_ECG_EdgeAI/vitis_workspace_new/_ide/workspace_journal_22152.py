# 2026-09-24T20:50:38.995013300
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

