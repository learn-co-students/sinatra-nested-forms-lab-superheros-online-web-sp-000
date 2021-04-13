class Super_hero
    attr_reader :name, :power, :bio

    @@super_hero = []

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @bio = args[:bio]
        @@super_hero << self
    end

    def self.all
        @@super_hero
    end

end