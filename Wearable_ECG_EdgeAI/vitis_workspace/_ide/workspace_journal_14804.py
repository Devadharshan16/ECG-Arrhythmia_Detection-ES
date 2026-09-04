# 2026-09-04T11:22:32.311997200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.create_platform_component(name = "ecg_platform",hw_design = "$COMPONENT_LOCATION/../../ecg_fpga_project/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

