
class 'Dome1'
function Dome1:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Dome1:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/dome1" ) then

        Network:Send( player, "Dome1Function")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Dome1 = Dome1()
















