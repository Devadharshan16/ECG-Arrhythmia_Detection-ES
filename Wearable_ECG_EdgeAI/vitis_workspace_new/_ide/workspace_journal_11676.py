# 2026-09-10T09:06:03.903603100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

vitis.dispose()

