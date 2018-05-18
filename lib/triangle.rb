class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(attributes)
    attributes.each {|key,value| self.send(("#{key}="), value)}
  end
  
  def kind
    if side1 == side2 && side1 == side3
      :equilateral
    elsif side1 == side2 or side2 == side3 or side1 == side3
      :isosceles
    elsif side1 != side2 and side2 != side3 and side1 != side3
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end
