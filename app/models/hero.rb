class Hero
    attr_accessor :name, :power, :bio

    def initialize(params)
        params.each {|k, v| self.send("#{k}=", v)}
    end
    
end