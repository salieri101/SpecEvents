function MouthFunctionOpen(Mouth)
        Game:FireEvent("open.mouth")
end
Network:Subscribe( "MouthOpen", self, MouthFunctionOpen )        














