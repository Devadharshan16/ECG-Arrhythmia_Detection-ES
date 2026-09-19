# 2026-09-17T20:02:37.943010100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

vitis.dispose()

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

