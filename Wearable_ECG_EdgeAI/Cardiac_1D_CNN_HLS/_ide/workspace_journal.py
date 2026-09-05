# 2026-09-05T16:22:02.079313500
import vitis

client = vitis.create_client()
client.set_workspace(path="Cardiac_1D_CNN_HLS")

vitis.dispose()

