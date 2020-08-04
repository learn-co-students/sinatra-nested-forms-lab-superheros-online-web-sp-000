class Hero
    attr_accessor :name, :power ,:biography
    @@all = []
    def initialize(hero)
        @name = hero[:name]
        @power = hero[:power]
        @biography = hero[:biography]
        @@all << self
    end
    def self.all
        @@all
    end
    def self.clear
        self.all.clear
    end
end