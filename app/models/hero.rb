class Hero
  attr_accessor :name, :power, :bio

  @@all = Array.new

  def initialize(args)
    args.each do |k, v|
      self.send("#{k}=", v)
    end
    @@all << self
  end

  def self.all
    @@all
  end

end