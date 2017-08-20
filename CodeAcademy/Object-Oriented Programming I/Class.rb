=begin
7/20 Naming Your Variables
<Class variables> are like instance variables,
but instead of belonging to an instance of a class, they belong to the class itself.
Class variables always start with two "@"s, like so: "@@files".

<Global variables> can be declared in two ways.
The first is one: you just define the variable outside of any method or class, and voilà! It's global.
If you want to make a variable global from inside a method or class, just start it with a "$", like so: ""$matz"".
=end




=begin
9/20 Twice the @, Twice as Classy
We can create class variables by starting a variable name with two "@" symbols.
Class variables are attached to entire classes, not just instances of classes, like so:

class MyClass
  @@class_variable
end

Because there's only one copy of a class variable shared by all instances of a class, we can use them to pull off some cool Ruby tricks.
For example, we can use a class variable to keep track of the number of instances of that class we've created.
=end

class Person
  @@people_count = 0 # Set your class variable to 0

  def initialize(name)
    @name = name
    @@people_count += 1 # Increment your class variable
  end

  def self.number_of_instances
    @@people_count # Return your class variable
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
