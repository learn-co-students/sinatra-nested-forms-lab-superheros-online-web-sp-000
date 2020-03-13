class Hero
  attr_accessor :name, :power, :bio

  @@all = []
  def self.all
    @@all
  end

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@all << self
  end
end
