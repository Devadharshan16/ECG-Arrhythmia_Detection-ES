# 2026-09-22T22:38:59.886551700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

vitis.dispose()

