class Member
    attr_accessor :name, :power, :bio

    @@all = []

    def initialize(attributes)
        @name = attributes["name"]
        @power = attributes["power"]
        @bio = attributes["bio"]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end