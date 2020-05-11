class Team
    attr_accessor :name, :motto

    @@all = []
    
    def initialize(name:, motto:)
        @name = name
        @motto = motto
    end

end