class Owner
  # code goes here

  @@all = []
  attr_reader :species
  attr_accessor :mood, :name, :pets


  
  def initialize(pets, name = "Patrick", species = "human")
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    @name = name
    @species = species
    @mood = mood
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish the_fish
    self.pets[:fishes] << Fish.new(the_fish)
  end

  def buy_cat the_cat
    self.pets[:cats] << Cat.new(the_cat)
  end

  def buy_dog the_dog
    self.pets[:dogs] << Dog.new(the_dog)
  end

  def walk_dogs 
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats  
    self.pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end 

  def feed_fish 
    self.pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
      self.pets.each do |type, animal_array|
        animal_array.map do |pet|
          pet.mood = "nervous"
        end
        pets[type] = []
      end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end