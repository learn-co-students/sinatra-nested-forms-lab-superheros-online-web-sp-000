class Hero
    attr_accessor :name, :power, :bio

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:biography]
    end

end