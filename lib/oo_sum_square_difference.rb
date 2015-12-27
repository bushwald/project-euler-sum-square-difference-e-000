# Implement your object-oriented solution here!
class SumSquareDifference
	def initialize(num)
		@num = num
		@sumSquares = Array.new
		@squareSum = Array.new
		@sumSquaresSum = 0
		@squareSumSum = 0
	end

	def difference
		j = 1
		for i in 0..@num-1
			@sumSquares << j * j
			@squareSum << j
			j += 1
		end

		@sumSquares.each{ |x|
			@sumSquaresSum += x
		}

		@squareSum.each{ |y|
			@squareSumSum += y
		}

		@squareSumSum *= @squareSumSum

		return @squareSumSum - @sumSquaresSum
	end

end

puts SumSquareDifference.new(5).difference

