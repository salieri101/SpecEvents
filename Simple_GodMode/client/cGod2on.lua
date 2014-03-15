function God2onFunction(God2on)
        Game:FireEvent("ply.invulnerable")
end

Network:Subscribe( "God2onFunction", self, God2onFunction )
