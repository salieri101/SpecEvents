function TowerFunction(Tower)
        Game:FireEvent("f3m05.explode")
end

Network:Subscribe( "TowerFunction", self, TowerFunction )
