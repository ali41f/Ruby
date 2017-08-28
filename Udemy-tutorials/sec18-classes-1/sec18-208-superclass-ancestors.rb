# obj receive structure or design from classes
# .class return the class of the obj was constructed from
# obj's class is itself another obj

# .superclass gives class that a current class inherits functionalities from
# inheritance follows an "is-a" structure
# the class that inherits from the superclass is called the subclass

# .ancestors returns an arr of all superclasses that inherits from
p 5.class # -->Integer
p 5.class.superclass # --> Numeric
# p Fixnum.superclass # --> Numeric
# --> warning: constant ::Fixnum is deprecated
p 5.class.superclass.superclass # --> Object
p 5.class.superclass.superclass.superclass # --> BasicObject
p 5.class.superclass.superclass.superclass.superclass # --> nil
# p 5.class.superclass.superclass.superclass.superclass.superclass
# --> undefined method `superclass' for nil:NilClass (NoMethodError)

p 3.14.class # --> Float
p 3.14.class.superclass # --> Numeric

p [1, 2, 3].class # --> Array
p [1, 2, 3].class.superclass # --> Object

p 5.class.ancestors
# --> [Integer, Numeric, Comparable, Object, Kernel, BasicObject]
p 3.14.class.ancestors
# --> [Float, Numeric, Comparable, Object, Kernel, BasicObject]
p [1, 2, 3].class.ancestors
# --> [Array, Enumerable, Object, Kernel, BasicObject]

p 5.class.superclass.superclass == Hash.new(0).class.superclass # --> true
