class Team
       attr_accessor :name, :motto

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        Team.create_members(params[:members],self)
    end
    

    def self.create_members(params, team)
        params.each do |hero_attr|
            Hero.new(hero_attr, team)
        end
    end

    def members 
        Hero.heros.select{|member| member.team == self}
    end

end