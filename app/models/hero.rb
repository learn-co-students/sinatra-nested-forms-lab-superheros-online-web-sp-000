class Hero
    attr_accessor :name, :power, :biography, :team

    @@heros = []

    def initialize(params, team)
        @name = params[:name]
        @power = params[:power]
        @biography = params[:biography]
        @team = team
        @@heros << self
    end

    def self.heros
        @@heros
    end
    

end