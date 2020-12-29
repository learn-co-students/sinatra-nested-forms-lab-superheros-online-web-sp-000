class Team
    attr_accessor :name, :motto, :heros
    
    def initialize(name, motto)
        @name = name
        @motto = motto
        @heros = []
    end

end