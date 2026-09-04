# 2026-09-04T11:38:35.173501100
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.create_platform_component(name = "ecg_platform",hw_design = "$COMPONENT_LOCATION/../../ecg_fpga_project/ecg_hardware.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

