class Team

  @@all = []

  attr_accessor :name, :motto

  def initialize(details)
    @name = details[:team][:name]
    @motto = details[:team][:motto]
    @@all << self
  end

  def self.clear
    @@all.clear
  end

  def self.all
    @@all
  end

end
