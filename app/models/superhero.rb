class Superhero
    attr_reader :name, :power, :bio
  
    @@superheros = []
  
    def initialize(args)
      @name = args[:name]
      @power = args[:power]
      @bio = args[:bio]
      @@superheros << self
    end
  
    def self.all
      @@superheros
    end
  
    def self.clear
      @@superheros = []
    end
  end