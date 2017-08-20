class Computer
  @@users = {} # Add a class variable called @@users to Computer class. Set it equal to an empty hash.

  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password # set @@users[username] = password so that @@users hash keeps usernames as keys with each username's password as the associated value.
    @files = {} # all instance variables need to be set by parameters! Your @files should just be @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end

  def Computer.get_users # A class method belongs to the class itself, and for that reason it's prefixed with the class name, like so:
    @@users
  end
end

# my_instance = ClassName.new(arguments)
my_computer = Computer.new("eric", 01234)
your_computer = Computer.new("you", 56789)

my_computer.create("groceries.txt")
your_computer.create("todo.txt")

puts "Users: #{Computer.get_users}"

=begin
you can set an instance variable to the value of the passed in parameter like so:

def initialize(my_var)
  @my_var = my_var
=end