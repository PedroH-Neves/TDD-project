class Solver
  def factorial(number)
    raise ArgumentError, 'numb must be an integer' unless number.is_a?(Integer)
    raise ArgumentError, 'Factorial is not defined for negative integers.' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end  
end