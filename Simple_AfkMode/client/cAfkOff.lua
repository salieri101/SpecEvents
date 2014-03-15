function AfkoffFunction(Afkoff)
        Game:FireEvent("ply.vulnerable")
end

Network:Subscribe( "AfkoffFunction", self, AfkoffFunction )
