ws2812.init()
buffer = ws2812.newBuffer(91, 3)
buffer:fill(0,0,255)
for lights = 1, 91 do
    if(lights % 10 < 5)then
        buffer:set(lights, 0,255,0) --v
    end
end    
beginBuffer = ws2812.newBuffer(20, 3)
beginBuffer:fill(0, 0, 0)
ws2812.write(beginBuffer..buffer)

mytimer = tmr.create()
mytimer:register(125, tmr.ALARM_AUTO, function()
    print("FireAndIce")
   buffer:shift(1, ws2812.SHIFT_CIRCULAR)
   beginBuffer = ws2812.newBuffer(20, 3)
    beginBuffer:fill(0, 0, 0)
    ws2812.write(beginBuffer..buffer)
end) 
mytimer:start()
