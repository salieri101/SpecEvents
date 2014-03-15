function AfkonFunction(Afkon)
        Game:FireEvent("ply.invulnerable")
end

Network:Subscribe( "AfkonFunction", self, AfkonFunction )
