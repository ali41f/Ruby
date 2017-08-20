=begin
12/20 Inheritance Syntax
In Ruby, inheritance works like this:

class DerivedClass < BaseClass
  # Some stuff!
end

the derived class is the new class you're making and the base class is the class from which that new class inherits.
You can read "<" as "inherits from."
=end

class Application
  def initialize(name)
    @name = name
  end
end

class MyApp < Application
end




=begin
13/20 Override!
In Ruby, inheritance works like this:

class DerivedClass < BaseClass
  # Some stuff!
end

the derived class is the new class you're making and the base class is the class from which that new class inherits.
You can read "<" as "inherits from."
=end

class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end

# your derived class a fight method that overrides Creature's;
# instead of returning "Punch to the chops!", it should return "Breathes fire!".

=begin
14/20 When Good isn't Good Enough
sometimes you'll be working with a derived class (or subclass),
and realize overwritten a method or attribute defined in that class' base class (also called a parent or superclass)
that you actually need.

You can directly access the attributes or methods of a superclass with Ruby's built-in super keyword.

class DerivedClass < Base
  def some_method
    super(optional args)
      # Some stuff
    end
  end
end

When you call super from inside a method, that tells Ruby to look in the superclass of the current class and
find a method with the same name as the one from which super is called.
If it finds it, Ruby will use the superclass' version of the method.
=end

class Dragon1 < Creature
  def fight
    puts "Instead of breathing fire..."
    super
  end
end

