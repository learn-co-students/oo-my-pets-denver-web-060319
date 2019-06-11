class Dog
  attr_reader :name, :owner
  attr_accessor :mood

  @@all = []

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
    @species = "dog"
    @@all << self
  end

  def self.all
    @@all
  end

end