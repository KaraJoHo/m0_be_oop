# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say(phrase)
    puts "*~* My name is #{@name} and #{phrase} *~*"
  end

end
prettyUnicorn = Unicorn.new("Sandra")
prettyUnicorn.say("I'm a pretty unicorn!")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  def initialize(name)
    @name = name
    @pet = "bat"
    @thirsty = true
  end

  attr_accessor :thirsty

  def drink
    @thirsty = false
    puts thirsty
  end
end

vampire1 = Vampire.new("Edward")
vampire1.drink


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
  end

  attr_accessor :is_hungry

  def eat(times_ate)
    if times_ate >= 4
      @is_hungry = false
      puts "#{@name} has eaten so much today."
      puts "Are they still hungry? #{is_hungry}, they are not!"
    else if
      times_ate < 4
      puts "#{@name} is hungry. Give them a snack"
    end
  end
end
end

dragon1 = Dragon.new("Jason", "Benedict", "Blue")
dragon1.eat(5)

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    @has_ring = true
  end

    attr_accessor :age
    attr_accessor :is_adult
    attr_accessor :is_old
    attr_accessor :has_ring


  def celebrate_birthday(age)
    @age = age + 1
    puts age
  end

  def adult_age
    if @age >= 33
      @is_adult = true
    end
  end

  def old_hobbit
    if @age >= 101
      @is_old =  true
    end
  end

  def has_a_ring
    if @name == "Frodo"
      @has_ring = true
      puts "Frodo has a ring!"
    else
      "Sorry, #{@name}, you don't have a ring"
    end
  end
end

hobbit1 = Hobbit.new("Frodo", "Gentle")
hobbit2 = Hobbit.new("Carla", "Gentle")

hobbit1.age = 35
hobbit2.age = 103

puts hobbit1.adult_age
puts hobbit2.adult_age
puts hobbit1.adult_age
puts hobbit2.old_hobbit
puts hobbit1.has_a_ring
puts hobbit2.has_a_ring
