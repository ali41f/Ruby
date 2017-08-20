=begin
16/20
Create a class called "Message" and give it an initialize method.
Take two parameters, "from" and "to", and set them to the instance variables "@from" and "@to" (respectively).
=end

class Message
  def initialize(from, to)
    @from = from
    @to = to
  end
end

=begin
17/20
Give your Message class a "@@messages_sent" class variable and set it equal to 0.
In the body of your initialize method, increment this value by 1 so that each time a new Message object is created, "@@messages_sent" will go up by 1.

Don't create any instances of your class just yet!
=end

class Message1
  @@messages_sent = 0
  def initialize(from, to)
    @@messages_sent += 1
    @from = from
    @to = to
  end
end

=begin
18/20 Forge an Object in the Fires of Mount Ruby
After your class, create a variable called "my_message".
Create an instance of your Message class using "Message.new" with whatever from and to arguments you want! Store the result in "my_message."
=end

class Message2
  @@messages_sent = 0
  def initialize(from, to)
    @@messages_sent += 1
    @from = from
    @to = to
  end
end

my_message = Message2.new("me", "you")
puts my_message

=begin
19/20 Inheriting a Fortune
Create a second class, "Email", that inherits from "Message".
Give it its own initialize method that takes just one parameter, "subject", and has one instance variable, "@subject", set equal to "subject".
=end

class Email < Message2
  def initialize(subject)
    @subject = subject
  end
end

=begin
20/20
Remove the "subject" parameter and "@subject" instance variable from "Email".
Pass "Email"'s initialize method the same two parameters passed to "Message"'s—"from" and "to",
add the super keyword as the only line of code in the body of Email's initialize method.
=end

class Email2 < Message
  def initialize(from, to)
    super
  end
end
