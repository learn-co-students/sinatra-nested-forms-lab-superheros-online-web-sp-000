class Team 
  attr_accessor :name, :motto, :members
  @@all = []
  
  def initialize(attributes)
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
end 