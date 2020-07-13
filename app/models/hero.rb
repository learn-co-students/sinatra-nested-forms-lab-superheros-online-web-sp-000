class Hero

  @@all = []

  attr_accessor :name, :power, :biography

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @biography = details[:biography]
    @@all << self
  end

  def self.clear
    @@all.clear
  end

  def self.all
    @@all
  end

end
