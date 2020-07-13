class Team

  attr_accessor :name, :motto, :members

  def initialize(hash)
    @name = hash[:name]
    @motto = hash[:motto]
    @members = []
    heroes = hash[:members]
    heroes.each do |h|
      hero = Hero.new(h)
      @members << hero
    end
    self
  end

end
