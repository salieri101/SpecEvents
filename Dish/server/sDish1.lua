
class 'Dish1'
function Dish1:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Dish1:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/dish1" ) then

        Network:Send( player, "Dish1Function")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Dish1 = Dish1()
















