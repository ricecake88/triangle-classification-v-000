require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(attributes)
    attributes.each {|key,value| self.send(("#{key}="), value)}
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
