class Team

    attr_reader :name, :motto, :heros
  
    @@all = []
  
    def initialize(params)
      @name = params[:name]
      @motto = params[:motto]
      @heros = params[:heros]
      @@all << self
    end
  
    def self.all
      @@all
    end

end