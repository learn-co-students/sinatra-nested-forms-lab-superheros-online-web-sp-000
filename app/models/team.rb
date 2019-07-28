class Team
  attr_accessor :name, :motto, :members
  
  @@all = []
  
  def initialize(attr)
    @name = attr[:name]
    @motto = attr[:motto]
    @members = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_member(member)
    @members << member
    member.team = self
  end
  
end