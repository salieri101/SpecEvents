function Dish1Function(Dish1)
        Game:FireEvent("sht.start.count.01")
end

Network:Subscribe( "Dish1Function", self, Dish1Function )
