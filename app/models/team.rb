class Team
  attr_accessor :name, :motto

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
end
