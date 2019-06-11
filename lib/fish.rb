class Fish
  attr_reader :name, :species
  attr_accessor :mood

  @@all = []

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
    @species = "fish"
    @@all << self
  end

  def self.all
    @@all
  end

end