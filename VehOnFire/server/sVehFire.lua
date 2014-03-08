
class 'VehOnFire'
function VehOnFire:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function VehOnFire:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/cfire" ) then

        Network:Send( player, "VehOnFireFunction")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local VehOnFire = VehOnFire()
















