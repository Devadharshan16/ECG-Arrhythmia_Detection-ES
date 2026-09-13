# 2026-09-12T13:39:59.625647900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

comp.build()

vitis.dispose()

