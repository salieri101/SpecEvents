
class 'Dish2'
function Dish2:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Dish2:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/dish2" ) then

        Network:Send( player, "Dish2Function")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Dish2 = Dish2()
















