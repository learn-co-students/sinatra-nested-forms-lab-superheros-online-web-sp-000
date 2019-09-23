class Team
    attr_accessor :name, :motto, :heroes
    
    def initialize(params)
        @name = params[:team][:name]
        @motto = params[:team][:motto]
    end

end