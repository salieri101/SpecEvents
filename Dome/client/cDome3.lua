function Dome3Function(Dome)
        Game:FireEvent("cot.startSequenceMissionComplete")
end

Network:Subscribe( "Dome3Function", self, Dome3Function )
