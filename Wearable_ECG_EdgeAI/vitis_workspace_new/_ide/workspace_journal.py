# 2026-09-04T12:32:10.097803800
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

comp.build()

comp.build()

vitis.dispose()

