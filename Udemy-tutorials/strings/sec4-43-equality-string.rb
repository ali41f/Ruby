a = "Hello"
b = "hello"
c = "Hello "

p a == b # lowercase and uppercase Hello/hello are not equal
p a == c # with or without space in the string is different

p "Apple" < "Banana"
p "hello" < "help"

p "A" < "a"
p "Z" < "a"
p "Help" < "Banana"
p "Help" < "banana"
# the entire capital cases alphabets are before lowercases
