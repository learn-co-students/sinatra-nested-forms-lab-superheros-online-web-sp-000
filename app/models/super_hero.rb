class Super_hero

    attr_accessor :name, :power, :biography

    @@super_hero=[]

    def initialize(params)
        @name=params[:name]
        @power=params[:power]
        @biography=params[:biography]
        @@super_hero<<self
    end

    def self.all
        @@super_hero
    end

    def self.clear
        @@super_hero.clear
    end 

end 