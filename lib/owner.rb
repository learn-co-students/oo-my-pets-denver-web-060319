class Owner
  attr_accessor :pets, :mood, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    self.pets[:fishes].push(Fish.new(name))
  end

  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

  def buy_dog(name)
    self.pets[:dogs].push(Dog.new(name))
  end

  def buy_cat(name)
    self.pets[:cats].push(Cat.new(name))
  end

  def sell_pets
    self.pets.each do |key, value|
      value.select do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.select do |key, value|
      value.shift(2)
    end
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end
end