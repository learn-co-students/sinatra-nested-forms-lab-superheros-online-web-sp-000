class Hero
    attr_accessor :name, :power, :bio

    @@all = []

    def initialize(hero)
        #binding.pry
        @name = hero["name"]
        @power = hero["power"]
        @bio = hero["biography"]
       
        @@all << self
    end

    def self.all
        @@all
    end
end