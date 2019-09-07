class Team 
  attr_reader :name, :motto 
  
  Teams = []
  
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    Teams << self 
  end
  
  
  
  
  
end 