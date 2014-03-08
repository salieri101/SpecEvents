function Dome2Function(Dome)
        Game:FireEvent("msy.km06Obj11.activated")
end

Network:Subscribe( "Dome2Function", self, Dome2Function )
