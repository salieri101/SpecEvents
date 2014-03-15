
class 'God2on'
function God2on:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function God2on:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/godon" ) then

        Network:Send( player, "God2onFunction")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local God2on = God2on()
















