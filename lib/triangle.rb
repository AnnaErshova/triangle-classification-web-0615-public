class TriangleError < StandardError
end # end Error Class

class Triangle

  def initialize(a,b,c)
    @a = a.to_f
    @b = b.to_f
    @c = c.to_f
  end # end initialize

  def kind
    if (@a + @b) > @c && (@a + @c) > @b && (@b + @c) > @a 
      if @a == 0 || @b == 0 || @c == 0
        raise TriangleError.new("Error")
      elsif @a < 0 || @b < 0 || @c < 0
        raise TriangleError.new("Error")
      elsif @a == @b && @a == @c && @b == @c
        :equilateral
      elsif @a != @b && @b != @c && @a != @c 
        :scalene
      else 
        :isosceles
      end # end inner-level if
    else 
      raise TriangleError.new("Error")
    end # end top-level if
  end # end kind

end # end class



=begin
Write a Triangle class that accepts its sides on initialization. 
Give your Triangles an instance method, kind that returns, as a symbol, its type. 
Make the tests pass!
HINT
The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. 
This is a principle known as the triangle inequality.
Further, each side must be larger than 0.
=end