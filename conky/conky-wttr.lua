#!/usr/bin/lua
http = require("socket.http")
json = require("json")

-- api endpoint header
api_url = "http://api.openweathermap.org/data/2.5/weather?"
cityid = "6167865"
cf = "metric"
apikey = ""

-- request
weather = http.request(("%sid=%s&units=%s&APPID=%s"):format(api_url, cityid, cf, apikey))

-- parsing the data
response = json.decode(weather)
temp = response.main.temp
conditions = response.weather[1].main

--- today's forecast (morn,aft,eve,ngt)
--- daily forecast (next 4 days)


