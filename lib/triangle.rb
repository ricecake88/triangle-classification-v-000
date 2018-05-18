class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(attributes)
    attributes.each {|key,value| self.send(("#{key}="), value)}
  end
  
  def kind
    
  end

  class TriangleError < StandardError
  end  
end
