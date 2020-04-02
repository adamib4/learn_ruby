#write your code here
# creat a calculator that does addition, substraction, division, multiplication
# and also finds the factorial of given number. 
#Multiplication and sums t
def add(num1, num2)
    num1+num2
end
def subtract(num1,num2)
    num1 - num2
end
def sum(myar)
    total = 0
    myar.each do |x|
        total += x
    end
    total
end
def power(num1,num2)
    num1**num2
end
def multiply(*argv)
	test = argv
	total =1
	if test.length <1 
		puts 'pass two or more numbers in order to find the total products.'
		exit 			
	elsif test.length == 1
		return test
	else
		test.each do |num|
			total *= num
		end
	end
	total
end
def factorial(num)
	if num <= 1 
		if num < 0
			puts 'Number must be greater than 0'
			exit
		else
			return 1
		end
	else
		num = num * factorial(num-1)
	end
end   