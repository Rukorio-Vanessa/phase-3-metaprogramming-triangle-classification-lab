class Triangle
  # write code here
  #accepts three arguments on initialization
  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
    
  def kind
    if @l1 <= 0 || @l2 <= 0 || @l3 <= 0
      raise TriangleError
    elsif @l1 + @l2 <= @l3 || @l3 + @l1 <= @l2 || @l3 + @l2 <= @l1
      raise TriangleError
    elsif @l1 == @l2 && @l2 == @l3
      :equilateral
    elsif @l1 == @l2 || @l1 == @l3 || @l3 == @l2
      :isosceles 
      
    else
      :scalene
    end
  end

  #a custom error class 'TriangleError' inherited from StandardError
  class TriangleError < StandardError
  end

end



puts Triangle.new(2, 2, 2).kind
#=>equilateral
puts Triangle.new(3, 4, 4).kind
#=>isosceles
puts Triangle.new(3, 4, 5).kind
#=>scalene
#puts Triangle.new(0, 0, 0).kind
#puts Triangle.new(3, 4, -5).kind
#puts Triangle.new(1, 1, 3).kind
