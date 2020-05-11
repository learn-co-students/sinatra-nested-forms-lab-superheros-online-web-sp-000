class SuperHero 

    attr_accessor :name, :power, :bio 

    @@all = [] 

    def initialize(params)
        # use mass assignment
        # params.each{|k,v| self.send("#{k}=", v)}
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio] 
    end

    def save 
        self.class.all << self 
    end 

    def self.create(params)
        self.new(params).save
    end

    def self.all
        @@all 
    end 

end