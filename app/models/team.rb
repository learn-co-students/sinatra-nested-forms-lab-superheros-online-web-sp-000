class Team
    @@team = []
    attr_accessor :name, :motto
    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@team << self
    end

    def self.all
        @@team
    end

    def self.clear
        @@team
    end 
end