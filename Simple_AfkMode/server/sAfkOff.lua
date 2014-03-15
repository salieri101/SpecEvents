
class 'Afkoff'
function Afkoff:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Afkoff:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/afkoff" ) then

        Network:Send( player, "AfkoffFunction")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Afkoff = Afkoff()
















