class Member

    attr_reader :name, :power, :bio

    @@all = []
    def initialize(attributes)
        @name = attributes[:name]
        @power = attributes[:power]
        @bio = attributes[:bio]
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end