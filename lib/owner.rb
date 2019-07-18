
class Owner
  attr_accessor :pets, :dog, :cat, :fish, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all 
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def say_species
    "I am a #{species}."
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.map do |species, animals|
      animals.map do |animal|
        animal.mood = "nervous"

      end
        animals.clear
    end
  
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end


end