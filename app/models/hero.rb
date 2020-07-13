class Hero
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(input)
    @name  = input[:name]
    @power = input[:power]
    @bio   = input[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

end
