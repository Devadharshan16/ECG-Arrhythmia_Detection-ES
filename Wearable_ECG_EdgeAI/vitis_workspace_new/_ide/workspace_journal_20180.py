# 2026-09-10T10:01:26.901414100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

comp.build()

vitis.dispose()

