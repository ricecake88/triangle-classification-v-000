require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    #attributes.each {|key,value| self.send(("#{key}="), value)}
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 == @side2 && @side2 == @side3
      return :equilateral
      binding.pry
    end
  end

  class TriangleError < StandardError
  end  
end
