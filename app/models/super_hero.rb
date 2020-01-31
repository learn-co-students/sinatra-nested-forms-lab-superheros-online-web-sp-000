class Superhero
  attr_accessor :name, :power, :biography
  @@all = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:biography]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
