=begin

Description:

Your friend won't stop texting his girlfriend. It's all he does. All day. Seriously.
The texts are so mushy too! The whole situation just makes you feel ill. Being the wonderful friend that you are, you hatch an evil plot.
While he's sleeping, you take his phone and change the autocorrect options so that every time he types "you" or "u" it gets changed to "your sister."

Write a function called autocorrect that takes a string and replaces all instances of "you" or "u" (not case sensitive) with "your sister" (always lower case).

Return the resulting string.

Here's the slightly tricky part: These are text messages, so there are different forms of "you" and "u".

For the purposes of this kata, here's what you need to support:

"youuuuu" with any number of u characters tacked onto the end
"u" at the beginning, middle, or end of a string, but NOT part of a word
"you" but NOT as part of another word like youtube or bayou

=end

Test_Arr = ["I miss you!",
            "u want to go to the movies?",
            "Can't wait to see youuuuu",
            "I want to film the bayou with you and put it on youtube",
            "You should come over Friday night",
            "You u youville utube you youyouyou uuu raiyou united youuuu u you",
            "You = best kisser",
            "i <3 u",
            "Let's put you on youtube",
            "my friend Alabinyou is conveniently named, and he wants to make a website called youwin with youuu",
            "You should be famous on youville",
            "Hope to see u there!"]

# clever way
def autocorrect(input)
  input.gsub(/\b(you+|u)\b/i, 'your sister')
end

Test_Arr.each { |sentence| print autocorrect(sentence), "\n" }


"""gsub(*args) public"""

"hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
"hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
"hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
"hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"

"""Interpolating"""
# replace /ll/ with itself
'hello'.gsub(/ll/, '\0') # returns 'hello'
'hello'.gsub(/ll/, "\0") # returns 'he\000o'

"""Replacing with '\' and match"""
v = "Foo Bar!"  # Target: Foo\ Bar\!
# Resulting strings will not be quoted to decrease
# the amount of backslashes. Compare \\! to "\\\\!"

v.gsub(/\W/, '\0') #=> Foo Bar!

# \\ escapes to a literal \, which next to the 0 becomes \0
v.gsub(/\W/, '\\0') #=> Foo Bar!

# \\\0, means "\ \0", or "escaped \0"
v.gsub(/\W/, '\\\0') #=> Foo\0Bar\0

# Same mechanism as before. \\ → \
v.gsub(/\W/, '\\\\0') #=> Foo\0Bar\0

# Finally! We have now an escaped \ before \0 and
# we get the results we want.
v.gsub(/\W/, '\\\\\0') #=> Foo\ Bar\!

# It's very tempting to just write it like this now, right?
v.gsub(/\W/) { |m| "\\#{m}" } #=> Foo\ Bar\!
# It might not be shorter, but anyone can understand it.



#\b as the boundary of the words in a string.
#\B has the opposite effect, affecting all letter/character boundaries instead of whole words.

string = "foo bar"

# if you gsub this using \b, it will look like this:
string.gsub(/\b/, "-") #=> -foo- -bar-

# As you can tell, it has added a "-" to only the boundaries (edges) of each word.
# using \B will
string.gsub(/\b/, "-") #=> f-o-o b-a-r

# These are the inside boundaries of each word instead of the outside boundaries.



def autocorrect1(input)
  replacements = [
      [/\bU\b/, 'your sister'],
      [/\bu\b/, 'your sister'],
      [/\byo(u+)\b/, 'your sister'],
      [/\bYo(u+)\b/, 'your sister']  ]
  new_string = replacements.inject(input) {|input, (k,v)| input.gsub(k,v)}
end

Test_Arr.each { |sentence| print autocorrect1(sentence), "\n" }


def autocorrect2(input)
  input_ary = input.split(" ")
  input_ary.each do |word|
    if word =~ /^(Y|y)o(u+)($|\W)/
      word.gsub!(/(Y|y)o(u+)/, "your sister")
    elsif word =~ /^(U|u)($|\W)/
      word.gsub!(/(U|u)/, "your sister")
    end
  end
  input_ary.join(" ")
end

Test_Arr.each { |sentence| print autocorrect2(sentence), "\n" }


# fussy way using if/else without .gsub
def autocorrect3(input)
  output = input.split()
  puts output
  output.each do |word|
    if word.length > 3 && word[3] =~ /\W/ && word[0] == "y"
      word.squeeze!("u")
      word.sub!("you", "your sister")
    elsif word.length > 3 && word[0] == "y" && word[3] == "u"
      word.squeeze!("u")
      word.sub!("you", "your sister")
    elsif word === "u" && word.length == 1
      word.sub!("u", "your sister")
    elsif word.length < 4 && (word[0] == "y" || word[0] == "Y")
      puts word
      word.squeeze!("u")
      word.sub!("you", "your sister")
      word.sub!("You", "your sister")
    end
  end
  output.join(" ")
end

Test_Arr.each { |sentence| puts autocorrect3(sentence)}