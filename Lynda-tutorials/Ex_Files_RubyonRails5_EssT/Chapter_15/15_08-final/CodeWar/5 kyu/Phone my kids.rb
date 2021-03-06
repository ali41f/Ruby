=begin

Sometimes you need to know all classes that inherited from you, and to be able to do simple things like listing or calling all of them.

Write a class called "Mother" that tracks all inheritances that are done to her (and her kids), together with a class method "phone_kids" that calls in turn the class method "phone" of all kids.
So if you have two kids:

class Foo < Mother
end

class Bar < Mother
end

The line:

Mother.phone_kids

Would call (in either order):

Foo.phone
Bar.phone

=end

class Mother
  @@subclasses = []
  # Add a method (or more) to track all kids
  def self.inherited subclass
    @@subclasses << subclass
  end

  def self.phone_kids
    # Call the static method "phone" of all kids
    @@subclasses.each { |subclass| subclass.phone }
  end
end


class Mother1

  def self.inherited(subclass)
    @subclasses ||= []
    @subclasses << subclass
  end

  def self.phone_kids
    @subclasses.each(&:phone)
  end
end


class Mother2
  @@subclasses = []

  def self.inherited klass
    @@subclasses << klass
  end

  def self.phone_kids
    @@subclasses.each { |klass| klass.phone }
  end
end


class Mother3
  def self.descendants
    ObjectSpace.each_object(::Class).select {|klass| klass < self }
  end

  def self.phone_kids
    descendants.each {|d| d.phone}
  end
end