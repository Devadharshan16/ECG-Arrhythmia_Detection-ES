# 2026-09-17T19:57:23.749332900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

comp = client.get_component(name="ecg_app")
comp.build()

status = comp.clean()

comp.build()

vitis.dispose()

