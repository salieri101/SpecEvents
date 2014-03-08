function VehOnFireFunction(Vfire)
        Game:FireEvent("ply.vehicle.burn")
end

Network:Subscribe( "VehOnFireFunction", self, VehOnFireFunction )
