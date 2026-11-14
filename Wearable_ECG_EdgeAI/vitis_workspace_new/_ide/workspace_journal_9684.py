# 2026-11-12T15:14:44.240026
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

vitis.dispose()

