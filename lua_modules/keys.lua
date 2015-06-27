local M={sta={},ap={},api={}}

-- Keys for wifi.setmode(wifi.STATION) or wifi.setmode(wifi.STATIONAP)
M.sta.SSID0='PASS0' -- pass=require('keys').sta
M.sta.SSID1='PASS1' -- ssid='PRE-SET SSID'
M.sta.SSID2='PASS2' -- wifi.sta.config(ssid,pass[ssid])

-- Keys for wifi.setmode(wifi.SOFTAP) or wifi.setmode(wifi.STATIONAP)
M.ap.ssid='ESP-'..node.chipid() -- cfg=require('keys').ap
M.ap.pwd=node.chipid()          -- wifi.ap.config(cfg)

-- Keys for api.thingspeak.com or a simmilar service
M.api.id='CHANNEL_ID'   -- api=require('keys').api
M.api.get='Read  Key'   --'https://api.thingspeak.com/channels/'..api.id..'/feed.json?key='..api.get
M.api.put='Write Key'   --'https://api.thingspeak.com/update?key='..api.put
return M