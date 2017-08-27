story = "Once upon a time in a land far, far away"

p story.length

p story[3]
p story[-20]
p story[100]
p story[-100] # char does not exist returning a nil

p story[3] # --> "e"
p story.slice(3) # --> "e"
p story[100] # --> nil
p story.slice(100) # --> nil
