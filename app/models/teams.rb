class Teams
    attr_accessor :name, :motto

    @@all = []

    def initialize(team)
        @name = team[:name]
        @motto = team[:motto]
        @@all << self
    end

    def self.all
        @@all
    end

end