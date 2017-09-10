=begin

You're hanging out with your friends in a bar, when suddenly one of them is so drunk, that he can't speak,
and when he wants to say something, he writes it down on a paper. However, none of the words he writes make sense to you.
He wants to help you, so he points at a beer and writes "yvvi".
You start to understand what he's trying to say, and you write a script, that decodes his words.

Keep in mind that numbers, as well as other characters, can be part of the input, and you should keep them like they are.
You should also test if the input is a string. If it is not, return "Input is not a string".

=end

Test_Arr = ["yvvi",
            "Blf zoivzwb szw 10 yvvih",
            "Ovg'h hdrn rm gsv ulfmgzrm!",
            "Tl slnv, blf'iv wifmp"]

def decode(string)
  return "Input is not a string" unless string.is_a?(String)
  string.tr("a-zA-Z","zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA")
end

Test_Arr.each { |code| print decode(code), "\n" }

"""tr(p1, p2) public"""

# Use tr when you want to replace single characters. tr checks single characters (not via regular expression),
# so the characters don't need to occur in the same order in the string.
# When a character is found, it is replaced (translated) by a character (by the one with the same index) from second argument:
'abcde'.tr('bda', '123') #=> "31c2e"
'abcde'.tr('bcd', '123') #=> "a123e"

# Use gsub when you need to use a regular expression or when you want to replace longer substrings:
'abcde'.gsub(/bda/, '123') #=> "abcde"
'abcde'.gsub(/b.d/, '123') #=> "a123e"

# Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str.
# If to_str is shorter than from_str, it is padded with its last character in order to maintain the correspondence.
"hello".tr('el', 'ip')      #=> "hippo"
"hello".tr('aeiou', '*')    #=> "h*ll*"

# Both strings may use the c1-c2 notation to denote ranges of characters, and from_str may start with a ^, which denotes all characters except those listed.
"hello".tr('a-y', 'b-z')    #=> "ifmmp"
"hello".tr('^aeiou', '*')   #=> "*e**o"


def decode1(string)
  return "Input is not a string" if !string.is_a?(String)

  letters = ('a'..'z').zip('A'..'Z').join

  letters_key = ('A'..'Z').zip('a'..'z').join.reverse

  return string.tr(letters, letters_key)
end

Test_Arr.each { |code| print decode1(code), "\n" }



def decode2(string)
  return "Input is not a string" unless string.is_a?(String)

  folding_cipher = Hash[("a".."z").to_a.zip(("a".."z").to_a.reverse)]
  folding_cipher_caps = Hash[("A".."Z").to_a.zip(("A".."Z").to_a.reverse)]

  new_string = string.gsub(/[a-z]/) { |letter| folding_cipher[letter] }

  new_string.gsub(/[A-Z]/) { |letter| folding_cipher_caps[letter] }
end

Test_Arr.each { |code| print decode2(code), "\n" }