# 2026-09-05T16:14:42.480697100
import vitis

client = vitis.create_client()
client.set_workspace(path="Wearable_ECG_EdgeAI")

vitis.dispose()

