class Triangle
  attr_reader :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if check_triangle
      if (self.side1 == self.side2) && (self.side1 == self.side3)
        :equilateral
      elsif (self.side1 == self.side2) || (self.side1 == self.side3) || (self.side2 == self.side3)
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end 
  end



  class TriangleError < StandardError

  end

  private

  def check_triangle
    if self.side1 > 0 && self.side2 > 0 && self.side3 > 0
      if self.side1 + self.side2 > self.side3 && self.side1 + self.side3 > self.side2 && self.side2 + self.side3 > self.side1
        true
      else
        false
      end
    else
      false
    end
  end
end
