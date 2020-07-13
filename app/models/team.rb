class Team
  attr_accessor :name, :motto, :heroes

  def initialize(attributes)
    @name = attributes[:name]
    @motto = attributes[:motto]
    @heroes = Hero.make_heroes_with_team(attributes[:members], self)
  end
end
