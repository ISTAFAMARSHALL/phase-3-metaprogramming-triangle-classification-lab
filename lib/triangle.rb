require 'pry'

class Triangle
  # write code here
  attr_accessor :num1, :num2, :num3

  @@all = []

  def initialize(num1,num2,num3)
    if num1>0 && num2>0 && num3>0 && !num1.negative?() && !num2.negative?() && !num3.negative?() && num1 + num2 > num3 && num2 + num3 > num1 && num1 + num3 > num2
      @num1 = num1
      @num2 = num2
      @num3 = num3
      @@all << @num1
      @@all << @num2
      @@all << @num3
    
    else
        begin
        raise TriangleError

      end
    end
  end

  def self.all
  @@all
  end

  def kind
    if num1 == num2 && num1 == num3 && num2 == num3
      return :equilateral
    elsif num1 != num2 && num1 != num3 && num2 != num3
      return :scalene
    else
      return :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      puts "This is an Error"
    end
  end

end

binding.pry