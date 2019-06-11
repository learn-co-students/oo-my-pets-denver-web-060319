class Fish
  @@all =[]
  @@count = 0

  attr_reader :name
  attr_accessor :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @@all << self
  end

  def self.all
    @@all
  end
  def self.count
    @@count
  end
  # code goes here
end