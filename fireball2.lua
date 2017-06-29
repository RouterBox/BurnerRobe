print("do lights")
ws2812.init()
buffer = ws2812.newBuffer(91, 3)
buffer:fill(5, 5, 5)


buffer:set(1, 255,255,255) --y
buffer:set(2, 255,255,200) --y
buffer:set(3, 255,255,150) --y
buffer:set(4, 255,255,100) --y
buffer:set(5, 255,255,50) --y
buffer:set(6, 255,255,0) --y

buffer:set(7, 255,204,0) --o
buffer:set(8, 250,204,0) --o
buffer:set(9, 200,204,0) --o
buffer:set(10, 150,204,0) --o
buffer:set(11, 100,204,0) --o
buffer:set(12, 51,204,0) --o

buffer:set(13, 0,255,0) --r
buffer:set(14, 0,200,0) --r
buffer:set(15, 0,150,0) --r
buffer:set(16, 0,100,0) --r
buffer:set(17, 0,50,0) --r
buffer:set(18, 0,25,0) --r
buffer:set(19, 0,0,0) --r

mytimer = tmr.create()
mytimer:register(30, tmr.ALARM_AUTO, function()
   print("fireball")
   buffer:shift(-1, ws2812.SHIFT_CIRCULAR)   
   beginBuffer = ws2812.newBuffer(20, 3)
    beginBuffer:fill(0, 0, 0)
    ws2812.write(beginBuffer..buffer)
end) 
mytimer:start()