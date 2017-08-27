poem = "99 bottles of beer of the wall, 99 bottles of beer"

p poem.scan(/\d/) # --> ["9", "9", "9", "9"]
p poem.scan(/\d+/) # --> ["99", "99"]

# \A means search the very beginning of the string
p poem.scan(/\A\d+/) # --> ["99"]
p poem.scan(/\A\d/) # --> ["9"]

# \z searches for the end or conclusion of the string
p poem.scan(/eer\z/)
