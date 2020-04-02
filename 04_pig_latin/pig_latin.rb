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
