class Team
    attr_reader :name, :motto

    @@all = []

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        self.all << self
    end

    def self.all
        @@all
    end
    
end