
class Team

attr_reader :name, :members, :motto

@@all = []

    def initialize(params)
        @name = params[:name]
        @members = params[:members]
        @motto = params[:motto]
        @@all << self
    end 

    def self.all
        @@all
    end 
end 


