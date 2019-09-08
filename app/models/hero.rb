require 'pry'

class Hero
  attr_reader :name, :power, :bio 
  
  Heroes=[]
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    Heroes << self 
  end 
  
  def self.all 
    Heroes 
  end 
  
end 