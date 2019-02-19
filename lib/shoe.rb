require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  
  def initialize(brand)
    counter = 0
    @brand = brand
    BRANDS.each {|item| counter += 1 if item == brand}
    BRANDS << brand if counter == 0
    counter = 0
    #binding.pry
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  

end