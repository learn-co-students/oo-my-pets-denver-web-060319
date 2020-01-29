class Owner
  OWNERS = []
  attr_accessor :name, :pets
  attr_reader :species

  def self.reset_all
    OWNERS.clear
  end


  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end


end