sentence = "Once upon a time in a land far far away"

def word_count(string)
	# Return a hash
	# keys represent the words in the string;
	# values represent how manys times occur
	words = string.split(" ")
	p words
	counts = Hash.new(0)
	# cannot use counts = {} here
	# because before counting the first time, the word doesn't exist returning a nil
	# thus count value will break
	# therefore set default count to 0

	words.each do |word|
		counts[word] += 1
	end
	counts
end

p word_count(sentence)
# --> {"Once"=>1, "upon"=>1, "a"=>2, "time"=>1, "in"=>1, "land"=>1, "far"=>2, "away"=>1}
