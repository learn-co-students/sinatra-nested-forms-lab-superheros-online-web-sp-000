class Hero

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value) if value.class != Array
    end
    @@all << self if !@@all.include? self
    self
  end

end
