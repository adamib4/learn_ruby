#write your code here
def echo(words)
    words
end
def shout(words)
    words.upcase
end
def repeat(word,number=2)
    ((word + ' ')* number).strip
end
def start_of_word(word,lengt=1)
    word.slice(0,lengt)
end
def first_word(words)
    words.split.first
end
def titleize(title)
    conjenction = ['and','of','the','in','over']
	 title.capitalize.split.map { |word|
		if conjenction.include? word 
			word
		else
			word.capitalize
		end
		}.join(' ')	
	
end

    