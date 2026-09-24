# 2026-09-24T13:21:33.907027900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.get_component(name="ecg_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ecg_fpga_project/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="ecg_app")
status = comp.clean()

comp.build()

comp.build()

status = comp.clean()

comp.build()

