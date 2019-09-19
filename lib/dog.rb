class Dog
  
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name, owner, mood)
    @name = name
    @owner = owner
    @mood = mood
  end
end