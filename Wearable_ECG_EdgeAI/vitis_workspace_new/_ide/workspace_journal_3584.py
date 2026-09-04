# 2026-09-04T11:39:10.580145700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.create_platform_component(name = "ecg_platform",hw_design = "$COMPONENT_LOCATION/../../ecg_fpga_project/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp = client.create_app_component(name="ecg_app",platform = "$COMPONENT_LOCATION/../ecg_platform/export/ecg_platform/ecg_platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

comp = client.get_component(name="ecg_app")
comp.build()

