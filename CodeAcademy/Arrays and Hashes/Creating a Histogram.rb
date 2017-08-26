puts 'Text please: '
text = gets.chomp

words = text.split(' ') # By calling the .split method on text, we can transform it into an array.

frequencies = Hash.new(0) # Create a hash called frequencies in the editor. Give it a default value of 0.
words.each { |word| frequencies[word] += 1 }
# The action we want is to update the hash with a key equal to the word, then increment its value by 1. Each key will be frequencies[word], and we can increment using += 1.
frequencies = frequencies.sort_by {|word, count| count } # .sort_by doesn't sort the hash in-place—it will create a copy that is sorted
# frequencies = frequencies.sort_by { |k, v| v }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + ' ' + frequency.to_s }


'''Sorting the Hash'''

colors = {'$blue' => 3, 'green' => 1, 'red' => 2}
colors = colors.sort_by do |color, count| # .sort_by function returns an array of arrays
  count
end
colors.reverse!


'''Iterating Over the Hash'''

fruit = {
    'apple' => 2,
    'banana' => 3,
    'cherry' => 5
}

fruit.each do |name, count|
  puts name + ' ' + count.to_s #  Note that we must first convert the value from a number to a string using .to_s before we can concatenate it.
end
