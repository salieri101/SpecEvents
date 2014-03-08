function Dish2Function(Dish2)
        Game:FireEvent("sht.start.count.02")
end

Network:Subscribe( "Dish2Function", self, Dish2Function )
