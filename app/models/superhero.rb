class SuperHero
  attr_accessor :name, :superpower, :bio
  SUPERHEROS = []
  
  def initialize(args)
    @name = args[:name]
    @superpower = args[:superpower]
    @bio = args[:bio]
    SUPERHEROS << self
  end
  
  def self.all
    SUPERHEROS
  end
end