class Team 
  attr_reader :name, :motto 
  
  Teams = []
  
  def initialize(params)
     #binding.pry
    @name = params[:name]
    @motto = params[:motto]
    Teams << self 
  end
  
  def self.all 
    Teams 
  end 
  
  
  
end 