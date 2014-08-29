class Animal

  def eat
    puts "yummy"
  end

end

animal=Animal.new

animal.eat

class Dog < Animal

  def bark
    puts "woof"
  end

end

dog = Dog.new
dog.bark
dog.eat

class Cat < Animal

  def meow
    puts "meow"
  end

end

module DuckMethods
  def quack
    puts "quack"
  end
end

class Duck < Animal

include DuckMethods

end

module BeaverMethods
  def beav
    puts "chop"
  end
end

class Beaver < Animal

include BeaverMethods

end

class Platypus < Animal

include DuckMethods
include BeaverMethods

end

platypus=Platypus.new
platypus.beav
