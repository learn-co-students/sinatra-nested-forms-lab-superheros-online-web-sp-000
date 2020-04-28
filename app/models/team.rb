class Team 
    attr_accessor :name, :motto, :members

    @@team=[]

    def initialize(params)
        @name=params[:name]
        @motto=params[:motto]
        @members=params[:members]
        @@team<<self
    end 

    def self.all
        @@team
    end

    def self.clear
        @@all.clear
    end

end