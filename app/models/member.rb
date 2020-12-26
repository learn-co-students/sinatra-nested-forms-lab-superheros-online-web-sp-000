class Member
    attr_reader :name, :power, :bio
    @@all = []

    def initialize(member_data)
        @name = member_data[:name]
        @power = member_data[:power]
        @bio = member_data[:bio]
        @@all << self
    end

    def self.all
        @@all
    end
end