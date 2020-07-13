class Team

attr_reader :name, :motto

TEAM = []

    def initialize(args)
        @name = args[:name]
        @motto = args[:motto]
        TEAM << self
    end

    def self.all
        TEAM
    end

    def self.clear
        TEAM.clear
    end

end