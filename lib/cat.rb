class Cat
  attr_reader :name, :species
  attr_accessor :mood

  @@all = []

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
    @species = "cat"
    @@all << self
  end

  def self.all
    @@all
  end

end