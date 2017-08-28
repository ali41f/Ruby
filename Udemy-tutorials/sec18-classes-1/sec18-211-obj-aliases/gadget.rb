class Gadget

end

shiny = Gadget.new
flashy = Gadget.new

p shiny.object_id # --> 47142017621920
p flashy.object_id # --> 47142017621900

glossy = shiny
p glossy.object_id # --> 47285882264000
p shiny.object_id == glossy.object_id # --> true
p shiny == glossy # --> true
