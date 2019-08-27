class Hero
  attr_accessor :name, :power, :biography

  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @biography = hero[:biography]
  end
end
