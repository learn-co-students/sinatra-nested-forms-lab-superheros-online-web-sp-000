class Team
  
  attr_accessor :name, :motto
  
  TEAMS = []
  
  def initialize(hash)
    @name = hash[:name]
    @motto = hash[:motto]
    TEAMS << self
  end
  
  def self.all
    TEAMS
  end 
  
end