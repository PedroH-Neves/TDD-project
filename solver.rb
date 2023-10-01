class Solver
  def factorial(number)
    raise ArgumentError, 'numb must be an integer' unless number.is_a?(Integer)
    raise ArgumentError, 'Factorial is not defined for negative integers.' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def fizzbuzz(mynum)
    raise ArgumentError, 'must be an integer' unless mynum.is_a?(Integer)

    if (mynum % 3).zero? && (mynum % 5).zero?
      'fizzbuzz'
    elsif (mynum % 3).zero?
      'fizz'
    elsif (mynum % 5).zero?
      'buzz'
    else
      mynum
    end
  end

  def reverse(word)
    raise ArgumentError, 'word must be a string' unless word.is_a?(String)

    return word if word.length <= 1

    word.reverse
  end
end
