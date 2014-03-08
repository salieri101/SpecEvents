function Dome1Function(Dome)
        Game:FireEvent("open.mouth")
end

Network:Subscribe( "Dome1Function", self, Dome1Function )
