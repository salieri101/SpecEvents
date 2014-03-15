
class 'God2off'
function God2off:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function God2off:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/godoff" ) then

        Network:Send( player, "God2offFunction")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local God2off = God2off()
















