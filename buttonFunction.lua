gpio.mode(2, gpio.INT, gpio.PULLUP)
patternCounter = 0
gpio.trig(2, "both", function(level)
    if(level == 1) then
        patternCounter = patternCounter + 1
        print(patternCounter)
        mytimer:stop()

        --buffer = ws2812.newBuffer(150, 3)
        --buffer:fill(5, 5, 5)
        
        if(patternCounter == 1)then
            dofile("doLights.lua")
        end
        if(patternCounter == 2)then
            dofile("TurboRainbow.lua")
        end
        if(patternCounter == 3)then
            dofile("colorFades.lua")
        end
        if(patternCounter == 4)then
            dofile("Fire_V_ice.lua")
        end
        if(patternCounter == 5)then
            dofile("FireAndIce.lua")
        end
        if(patternCounter == 6)then
            dofile("BigFireAndIce.lua")
        end
        if(patternCounter == 7)then
            dofile("tenRotate.lua")
        end
        if(patternCounter == 8)then
            dofile("whiteTrain.lua")
        end
        if(patternCounter == 9)then
            dofile("cheshireCat.lua")
        end
        if(patternCounter == 10)then
            dofile("twinkleToes.lua")
        end
        if(patternCounter == 11)then
            dofile("sparkle.lua")
        end
        if(patternCounter == 12)then
            dofile("fireBall.lua")
        end
        if(patternCounter == 13)then
            dofile("turnOffLights.lua")
            patternCounter = 0
        end

        
    end
end)
