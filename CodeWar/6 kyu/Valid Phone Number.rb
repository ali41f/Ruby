=begin
Write a function that accepts a string, and returns true if it is in the form of a phone number.
Assume that any integer from 0-9 in any of the spots will produce a valid phone number.

Only worry about the following format:
(123) 456-7890 (don't forget the space after the close parentheses)
=end

Test_arr = ["(123) 456-7890", "(1111)555 2345", "(098) 123 4567"]


def validPhoneNumber(phoneNumber)
  if phoneNumber.match (/[a-z]/)
    return false
  elsif phoneNumber.match /\(\d{3}\) \d{3}-\d{4}/
    return true
  else
    return false
  end
end

Test_arr.each { |x| print validPhoneNumber(x), "\n"}




def validPhoneNumber1(phoneNumber)
  !!phoneNumber[/\A\(\d{3}\)\s\d{3}-\d{4}\z/]
end

def validPhoneNumber2(phoneNumber)
  !!(phoneNumber =~ /^\(\d{3}\) \d{3}-\d{4}$/)
end

Test_arr.each { |x| print validPhoneNumber1(x), "\n"}
Test_arr.each { |x| print validPhoneNumber2(x), "\n"}




def validPhoneNumber3(phoneNumber)
  /\A\(\d{3}\) \d{3}-\d{4}\z/ === phoneNumber
end

Test_arr.each { |x| print validPhoneNumber3(x), "\n"}
