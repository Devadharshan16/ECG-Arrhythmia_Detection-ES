# 2026-09-12T13:00:28.372725500
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

vitis.dispose()

vitis.dispose()

