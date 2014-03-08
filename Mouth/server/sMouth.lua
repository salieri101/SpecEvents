class 'MouthForecast'
function MouthForecast:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
self.open = false
end
function MouthForecast:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/mouth1" ) then
--	Network:Send( player, "MouthFunctionOpen")
	Network:Broadcast( player, "MouthFunctionOpen")	
	end
     if ( cmdargs[1] == "/mouth2" ) then
--	Network:Send( player, "MouthFunctionClose")
	Network:Broadcast( player, "MouthFunctionClose")	
	end

    return false
end

local Mouthforecast = MouthForecast()













