class Team

attr_accessor :name, :motto, :members

@@all = []

def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@all << self
end

def self.all
    return @@all
end

end