class Team

    attr_reader :name, :motto

    @@all = []

    def self.all
        @@all
    end

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        self.class.all << self
    end
end