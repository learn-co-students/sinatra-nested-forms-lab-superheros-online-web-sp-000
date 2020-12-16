class Hero

    attr_accessor :name, :power, :biography
    @@all = []

    def initialize(name, power, biography)
        @name = name
        @power = power
        @biography = biography
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        all.clear
    end

end