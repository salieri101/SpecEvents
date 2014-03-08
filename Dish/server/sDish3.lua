
class 'Dish3'
function Dish3:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Dish3:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/dish3" ) then

        Network:Send( player, "Dish3Function")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Dish3 = Dish3()
















