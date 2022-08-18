class Triangle
  attr_reader :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    valid_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else
      :scalene
    end
  end

def valid_triangle_size?
  [x, y, z].all?(&:positive?)
end
def valid_triangle_inequality?
  x+y > z && y+z > x && x+z > y
end

def valid_triangle
  raise TriangleError unless valid_triangle_inequality? && valid_triangle_size?
end
  # write code here
  class TriangleError < StandardError
    def message
      "Invalid Triangle. Ensure Traingle Inequality!"
    end
  end
end
