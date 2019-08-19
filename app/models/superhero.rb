class Superhero 
    attr_accessor :name, :power, :bio
    @@superheroes = []

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]
        @@superheroes << self
    end

    def self.all
        @@superheroes
    end 

    def self.clear
        @@superheroes = []
    end 
end 

