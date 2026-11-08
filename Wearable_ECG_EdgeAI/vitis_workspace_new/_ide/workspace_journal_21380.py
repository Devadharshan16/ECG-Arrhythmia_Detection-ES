# 2026-10-16T13:43:22.659644100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

comp.build()

vitis.dispose()

vitis.dispose()

