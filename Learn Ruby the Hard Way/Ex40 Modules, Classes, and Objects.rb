mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple']

require "./mystuff.rb"
MyStuff.apple()
puts MyStuff::TANGERINE

mystuff['apple'] # get apple from dict
MyStuff.apple() # get apple from the module
MyStuff::TANGERINE # same thing, it's just a variable

=begin
Refer back to the hash, and you should start to see how this is similar to using a hash, but the syntax is different. Let's compare:

Take a key=value style container.
Get something out of it by the key's name.

In the case of the hash, the key is a string and the syntax is "[key]".
In the case of the module, the key is an identifier, and the syntax is ".key". Other than that they are nearly the same thing.
=end



class MyStuff1

  def initialize() # Instantiation is how you make one of these mini-modules and require it at the same time. "Instantiate" just means to create an object from the class.
    @tangerine = "And now a thousand years between" # @tangerine for setting the tangerine instance variable
  end

  attr_reader :tangerine

  def apple()
    puts "I AM CLASSY APPLES!"
  end

end

thing = MyStuff1.new()
thing.apple()
puts thing.tangerine

=begin
01. Ruby looks for MyStuff and sees that it is a class you've defined.
02. Ruby crafts an empty object with all the functions you've specified in the class using def because you did MyStuff.new().
03. Ruby then looks to see if you made a "magic" initialize function, and if you have it calls that function to initialize your newly created empty object.
04. In the MyStuff function initialize I then use @tangerine which is telling Ruby, "I want the tangerine variable that is part of this object."
    Ruby uses operators like @ and $ to say where a variable is located. When you did $stdin you were saying, "the global stdin," because $ means global.
    When you do @tangerine you are saying, "the object's tangerine", because @ means "this object."
05. In this case, I set @tangerine to a song lyric and then I've initialized this object.
06. Now Ruby can take this newly minted object and assign it to the thing variable for me to work with.

classes and objects suddenly diverge from modules at this point:
01. Classes are like blueprints or definitions for creating new mini-modules.
02. Instantiation is how you make one of these mini-modules and require it at the same time. "Instantiate" just means to create an object from the class.
03. The resulting created mini-module is called an object and you then assign it to a variable to work with it.
=end

"""Getting Things from Things"""

# dict style
mystuff['apples']

# module style
MyStuff.apple()
puts MyStuff::TANGERINE

# class style
thing = MyStuff1.new()
thing.apple()
puts thing.tangerine




class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

happy_bday = Song.new(["Happy birthday to you",
                       "I don't want to get sued",
                       "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
                            "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

=begin
Why do I need @ on @tangerine when I make initialize or other functions?

If you don't have the @ on a variable then Ruby doesn't know which variable you are referring to.
Do you mean a tangerine in your function, in the script, or in the object your setting up?
The @ on @tangerine makes your usage specific so Ruby knows where to look.
=end
