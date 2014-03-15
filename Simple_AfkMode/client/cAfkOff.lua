function AfkoffFunction(Afkoff)
        Game:FireEvent("ply.vulnerable")
		Game:FireEvent("ply.unpause")
end

Network:Subscribe( "AfkoffFunction", self, AfkoffFunction )
