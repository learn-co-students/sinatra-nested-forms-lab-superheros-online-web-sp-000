class Heroes

    attr_accessor :name, :power, :bio

    @@all = []

    def initialize(hero)
        @name = hero[:name]
        @power = hero[:power]
        @bio = hero[:bio]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end