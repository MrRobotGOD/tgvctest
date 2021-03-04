# import logging
from pyrogram import Client, idle

api_id = 483450
api_hash = "18a655721d3c225e0dde3896964a505c"

plugins = dict(
    root="plugins",
    include=[
        "vc.player",
        "ping"
    ]
)

app = Client("tgvc")
# logging.basicConfig(level=logging.INFO)
app.start()
print('>>> USERBOT STARTED')
idle()
app.stop()
print('\n>>> USERBOT STOPPED')
