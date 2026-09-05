# 2026-09-05T15:57:57.136875100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

vitis.dispose()

