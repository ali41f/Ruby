story = "Once upon a time in a land far, far away..."

p story[27..39]
p story.slice(27..39)

p story[27...39]
p story.slice(27...39)
# two dots means inclusive the last char, three dots exclusive the last char

p story[32..1000]
p story.slice(32..1000)
# extract to the end until no char at that index

p story[25..-9]
p story.slice(25..-9)
# first arg stating the end char, second arg stating how many letter going backwards
