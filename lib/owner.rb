class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize name, species = "human", pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @pets = pets
    @species = species
    @@all << self
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
  
  def species_name
    self.species
  end

  def say_species
    "I am a #{self.species}."
  end

  def return_name
    self.name
  end

  def buy_fish name
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat name
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog name
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @@all.each do |owner|
      owner.pets[:dogs].each {|dog| dog.mood = "happy"}
    end
  end

  def play_with_cats
    @@all.each do |owner|
      owner.pets[:cats].each {|cat| cat.mood = "happy"}
    end
  end


  def feed_fish
    @@all.each do |owner|
      owner.pets[:fishes].each {|fish| fish.mood = "happy"}
    end
  end

  def sell_pets
    self.pets.each do |type, value|
      value.each {|pet| pet.mood = "nervous"}
    end
    self.pets = {}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end