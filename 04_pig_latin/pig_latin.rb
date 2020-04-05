=begin
Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.

Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.

Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

(There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)

See http://en.wikipedia.org/wiki/Pig_latin for more details.

=end

def translate(word)
	sentence = word.split(" ")

	vowels = ['a','e','i','o','u','y']

	sentence.each do |word|
		temp = ''
		until ['a','e','i','o','u'].include? (word[0])
			if 0 < word.length - 1 && word[0] == 'q' && word[1] == 'u' then
					temp << word[0,2]
							word[0,2]= ''
			else
				temp << word[0]
						word[0]= ''
			end

		end
		word << temp + 'ay'
	end
	sentence.join(" ")
end
