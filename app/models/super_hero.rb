class Super_hero 
  attr_accessor :name, :power, :bio
  @@all = []
  def initialize(params)
    @name = name
    @power = power
    @bio = bio
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
end