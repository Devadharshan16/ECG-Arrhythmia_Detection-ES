# 2026-09-17T19:51:03.025593200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

vitis.dispose()

