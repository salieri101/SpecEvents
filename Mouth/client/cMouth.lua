
function MouthFunctionOpen(Mouth)
        Game:FireEvent("open.mouth")
end

Network:Subscribe( "MouthFunctionOpen", self, MouthFunction )

function MouthFunctionClose(Mouth)
        Game:FireEvent("close.mouth")
end

Network:Subscribe( "MouthFunctionClose", self, MouthFunction )        














