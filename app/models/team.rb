class Team
  attr_reader :name, :motto

  @@teams = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end

  def self.clear
    @@teams = []
  end

end
