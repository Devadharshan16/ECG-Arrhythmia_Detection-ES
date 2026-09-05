# 2026-09-05T16:09:22.020768800
import vitis

client = vitis.create_client()
client.set_workspace(path="Cardiac_1D_CNN_HLS")

vitis.dispose()

