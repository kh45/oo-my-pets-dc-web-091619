class Dog
  
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
  end
  
end