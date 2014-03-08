
class 'Dome2'
function Dome2:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Dome2:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/dome2" ) then

        Network:Send( player, "Dome2Function")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Dome2 = Dome2()
















