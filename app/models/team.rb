class Team
  
  attr_accessor :name, :motto
  
  @@all = []
  
  def initialize(params)
    @name = params["team"]["name"]
    @motto = params["team"]["motto"]
    self.class.all << self
  end
  
  def self.all
    @@all
  end
end