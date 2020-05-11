class Team 

    attr_accessor :name, :motto

    @@all = [] 

    def initialize(params)
        # use mass assignment
        # params.each{|k,v| self.send("#{k}=", v)}
        @name = params[:name]
        @motto = params[:motto]
    end

end