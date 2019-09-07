require 'pry'

class Hero
  attr_reader :name, :power, :bio 
  
  Heroes=[]
  
  def initialize(params)
    @name = params[0][:name]
    @power = params[0][:power]
    @bio = params[0][:bio]
    Heroes << self 
  end 
  
  
  
end 