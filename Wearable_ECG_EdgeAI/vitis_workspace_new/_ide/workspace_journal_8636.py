# 2026-09-05T13:53:16.468117200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

