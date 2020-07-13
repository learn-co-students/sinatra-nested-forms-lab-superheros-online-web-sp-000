class Hero
  
  attr_reader :name, :power, :bio
  
  ALL_HEROES = []
  
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    ALL_HEROES << self
  end
  
  def self.all
    ALL_HEROES
  end
  
  def self.clear
    ALL_HEROES.clear
  end
end