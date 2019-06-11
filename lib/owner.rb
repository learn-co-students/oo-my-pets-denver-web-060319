class Owner
  @@all =[]
  @@count = 0

  attr_reader :species
  attr_accessor :mood, :name, :pets


  def initialize(pets, species="human", name =  "Devin")
    @name = name
    @mood = mood
    @species = species
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
    @@count +=1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end
  # code goes here

  def self.reset_all
    @@all = []
    @@count = 0
  end
  def say_species
       return "I am a #{self.species}."
    end
  
    def buy_fish(name)
      self.pets[:fishes] << Fish.new(name)
    end
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
def buy_dog(name)
  self.pets[:dogs] << Dog.new(name)
end

def walk_dogs
  self.pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  self.pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  self.pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end


def sell_pets
self.pets.each do |k, v|
  v.each do |pet|
    pet.mood = "nervous"
  end
    self.pets = []
  end
end


def list_pets
  return "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
end


end