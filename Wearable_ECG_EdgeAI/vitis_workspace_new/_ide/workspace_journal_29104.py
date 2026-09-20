# 2026-09-20T16:06:41.798683200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

status = comp.clean()

vitis.dispose()

