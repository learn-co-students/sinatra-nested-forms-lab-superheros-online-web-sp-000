class Hero
  
  attr_reader :name, :power, :bio
 
  Heroes = []
 
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    Heroes << self
  end
 
  def self.all
    Heroes
  end
  
end