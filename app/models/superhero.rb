class Superhero

  attr_reader :name, :power, :biography

  SUPERHEROS = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

  def self.clear
    SUPERHEROS.clear
  end

end
