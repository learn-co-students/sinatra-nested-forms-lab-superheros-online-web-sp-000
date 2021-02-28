class Team
    attr_accessor :name, :motto
  
    def self.all
        @@all ||= []
    end
  
    def initialize(hash)
        @name, @motto = hash[:name], hash[:motto]
    end

  end
