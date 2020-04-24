class Hero
  attr_reader :name, :power, :biography
  HEROES = []

  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @biography = hero[:biography]
    HEROES << self
  end

  def self.all
    HEROES
  end

end
