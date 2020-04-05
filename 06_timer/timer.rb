=begin
Write Class timer will take given seconds, convert it to time format: hh:mm:ss
=end

class Timer
	attr_accessor :seconds
	def seconds
		seconds = 0
	end
	def time_string
		if @seconds
			minutes, seconds = @seconds.divmod(60)
			hours, minutes = minutes.divmod(60)
			hours.to_s.rjust(2,"0")+':'+minutes.to_s.rjust(2,"0")+':'+seconds.to_s.rjust(2,"0")
		else 
			puts "seconds amount was not specify. Please input the amount of seconds you want to convert to hh:mm:ss"
			@seconds = gets.chomp.to_i
			time_string()
		end
	end

end