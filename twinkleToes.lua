buffer = ws2812.newBuffer(91, 3)
buffer:fill(0,0,0)
for i=1, 10 do
    buffer:set(math.random(91), math.random(255), math.random(255), math.random(255))
end
beginBuffer = ws2812.newBuffer(20, 3)
beginBuffer:fill(0, 0, 0)
ws2812.write(beginBuffer..buffer)
mytimer = tmr.create()
mytimer:register(math.random(250)+250, tmr.ALARM_AUTO, function()
    print("sparkle")
    buffer:fill(0,0,0)
    for i=1, 10 do
        buffer:set(math.random(91), math.random(255), math.random(255), math.random(255))
    end
    beginBuffer = ws2812.newBuffer(20, 3)
    beginBuffer:fill(0, 0, 0)
    ws2812.write(beginBuffer..buffer)
end) 
mytimer:start() 
