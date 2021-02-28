class SuperHero
    attr_accessor :name, :power, :bio

    def initialize(hash)
        @name, @power, @bio = hash[:name], hash[:power], hash[:bio]
    end

end