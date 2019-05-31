class Hero
  attr_reader :name, :power, :bio

  HEROS = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HEROS << self
  end

  def self.all
    HEROS
  end

  def self.clear
    HEROS.clear
  end

end
