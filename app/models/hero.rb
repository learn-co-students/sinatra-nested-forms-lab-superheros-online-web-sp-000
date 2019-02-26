class Hero
  attr_accessor :team, :name, :power, :biography

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
  end
end
