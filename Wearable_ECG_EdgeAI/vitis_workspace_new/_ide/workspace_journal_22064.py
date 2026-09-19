# 2026-09-13T12:43:24.243635
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace_new")

platform = client.get_component(name="ecg_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ecg_fpga_project/design_1_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="ecg_app")
comp.build()

status = comp.clean()

comp.build()

comp.build()

status = comp.clean()

comp.build()

comp.build()

comp.build()

status = comp.clean()

comp.build()

status = comp.clean()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

