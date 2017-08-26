class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}"

      private

      def pin
        @pin = 1234
      end

      def pin_error
        'Access denied: incorrect PIN.'

      else
        pin_error
      end
    end
  end
end

# Something important to note: you can explicitly declare your public methods public,
# or you can omit public and your methods will be public by default.
# However! If you don't use public, you need to put your public methods before the private keyword,
# since private affects every method after it appears. If you put your public methods below private and don't label them public, they'll be private, too!
