function God2offFunction(God2off)
        Game:FireEvent("ply.vulnerable")
end

Network:Subscribe( "God2offFunction", self, God2offFunction )
