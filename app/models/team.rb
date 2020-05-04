class Team
    attr_reader :name, :motto
    @@all = []

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@all << self
    end

    def self.all
        @@all
    end
end

p Team.new(name: "LA Lakers", motto: "kings of basketball")
p Team.all.first.motto