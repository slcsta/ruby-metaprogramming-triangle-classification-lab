class Triangle
  #attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3) #each argument is the length of one of the three sides of the triangle
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
      raise TriangleError 
    else
      if @side_1 == @side_2 && @side_2 == @side_3 
        :equilateral
    
      elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
        :isosceles

      elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
end
    #triangle error code here

  #the sum of the lengths of any two sides of a triangle always exceeds the length
  #of the third side. This is a principle known as triangle inequality.

  #each side must also be larger than 0
  


# Pseudocode

# 1. Write an initialize method for the triangle class that instantiates any new instance of 
#    a triangle by initializing a triangle with three side lengths. The initialize method will
#    take in three arguments with each argument being a side length.

# 2. Write an instance method "kind" that returns what type of triangle a new instance of the
#    the Triangle class is. There are three valid types of triangles:
#       1. ":equilateral"  
#       2. ":isosceles"  
#       3. ":scalene"
#    the method "kind" will determine which of the three types the triangle is and then return
#    as its type a symbol representing its kind or type.

# 3. If the triangle is not one of the 3 types, then the kind method should raise a custom
#    error. Write a custom error class, "TriangleError" inside the Triangle class. Inherit the
#    "TriangleError" from "StandardError". The error should be raised if the sum of the lengths
#    of any two sides of the triangle does not exceed the length of the third side (a princile
#    known as triangle inequality). An error should also be raised if each side is not larger
#    than 0.