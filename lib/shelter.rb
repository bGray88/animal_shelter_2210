class Shelter

attr_reader :name, :capacity, :pets

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @pets = []
  end

  def add_pet(name)
    @pets << name
  end

  def call_pets
    @pets.map {|name| name.concat("!")}
  end

  def over_capacity?
    @pets.length > @capacity
  end

  def adopt
    while @pets.length > @capacity
      @pets.shift
    end
  end
end