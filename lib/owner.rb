class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(name, species = "human", pets = {fishes: [], cats: [], dogs: []})
    @name = name
    @species = species
    @pets = pets
    @@all << self
  end 

  def species_name
    self.species
  end

  def say_species
    "I am a #{self.species}."
  end

  def owner_name
    self.name
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    Cat.all.each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    Fish.all.each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each {|type, value| 
      value.each {|pet| pet.mood = "nervous"}}
    self.pets = {fishes: [], cats: [], dogs: []}  
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
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