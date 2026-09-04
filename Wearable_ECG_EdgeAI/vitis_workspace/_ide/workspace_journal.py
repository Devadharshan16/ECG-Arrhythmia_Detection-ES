# 2026-09-04T11:24:59.150743500
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

comp = client.create_app_component(name="ecg_app",platform = "$COMPONENT_LOCATION/../ecg_platform/export/ecg_platform/ecg_platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

