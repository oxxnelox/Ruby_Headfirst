class Bird
  def talk
    puts "Chirp! Chirp!"
  end

  def move(destination)
    puts " Flies to the #{destination}."
  end
end

class Dog
  def talk
    puts "Bark!"
  end

  def move(destination)
    puts "Runs to the #{destination}."
  end
end

class Cat
  def talk
    puts "Meow!"
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

dog = Dog.new
cat = Cat.new
bird = Bird.new

bird.move("tree")
dog.talk
bird.talk
cat.move("house")