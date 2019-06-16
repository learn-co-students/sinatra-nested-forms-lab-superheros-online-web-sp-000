class Team

  @@all = []

  attr_accessor :name, :motto

  def initialize(details)
    @name = details[:name]
    @motto = details[:motto]
    @@all << self
  end

  def self.clear
    @@all.clear
  end

  def self.all
    @@all
  end

end
