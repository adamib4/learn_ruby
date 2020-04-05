# Capitalize books title, with the excetion of certain keywords

class Book
	attr_accessor :title
	def title=(values)
		excluded_words = ['the','and','of','a','an','in','on',]
		words = values.split.each_with_index.collect do |word,index|
			if excluded_words.include?(word) && index > 0
				word
			else
				word.capitalize
			end
		end
		@title = words.join(' ')
	end
end
