function RicoFunction(Rico)
        Game:FireEvent("ply.predator.awesomeness")
end

Network:Subscribe( "RicoFunction", self, RicoFunction )
