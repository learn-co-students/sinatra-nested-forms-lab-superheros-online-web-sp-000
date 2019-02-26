class Team
  attr_accessor :name, :motto, :heroes

  @@all = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @heroes = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_hero(hero)
    @heroes << hero
    hero.team = self
    hero
  end
end
