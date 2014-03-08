
class 'Dome3'
function Dome3:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Dome3:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/dome3" ) then

        Network:Send( player, "Dome3Function")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Dome3 = Dome3()
















