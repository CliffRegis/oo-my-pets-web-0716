require 'pry'

class Owner
	attr_reader :species
	attr_accessor :name, :pets, :mood, :dog
	@@all =[]

  def initialize(pets)
  	@pets = {fishes: [], cats: [], dogs: []}
  	@species = "human"
  	
  	@@all << self
  end

  def buy_cat(name)
  	@pets[:cats]<< Cat.new(name)
  	#new_pet.owner = self
  end

  def self.all
  	@@all
  end
  def self.reset_all
  	@@all.clear
  end
  def self.count
  	@@all.count
  end

  def say_species
  	"I am a #{self.species}."
  end

  def buy_fish(name)

  	@pets[:fishes]<< Fish.new(name)
  end

  def buy_dog(name)

  	@pets[:dogs]<< Dog.new(name)
  end

  def walk_dogs
  	@pets[:dogs].collect {|x| puts x.mood = "happy" }
  end

 
  def play_with_cats
  	@pets[:cats].collect {|x| puts x.mood = "happy" }

  end
  

  def feed_fish
  	@pets[:fishes].collect {|x| puts x.mood = "happy" }

  end

  def sell_pets
  	 @pets[:dogs].collect {|k| k.mood = "nervous"}
  	 @pets[:fishes].collect {|k| k.mood = "nervous"}
  	 @pets[:cats].collect {|k| k.mood = "nervous"}
      
  	 self.pets.collect {|t,p| p.clear}
  end

  def list_pets
  	 
  	 fishy = @pets[:fishes]
  	 caty = @pets[:cats]
  	 doggy = @pets[:dogs] 
  	 	"I have #{fishy.count} fish, #{doggy.count} dog(s), and #{caty.count} cat(s)."
  end

end