class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def say_species
    return "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select{|cat|
      cat if cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog|
      dog if dog.owner == self}
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end

end