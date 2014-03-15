function AfkonFunction(Afkon)
        Game:FireEvent("ply.invulnerable")
		Game:FireEvent("ply.pause")
end

Network:Subscribe( "AfkonFunction", self, AfkonFunction )
