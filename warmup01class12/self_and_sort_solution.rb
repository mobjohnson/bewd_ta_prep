class Utopia
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name
    @name
  end

  def self.define
    puts "I am the bodiless notion of a near-perfect society."
    return self
  end

  def define
    puts "I am #{name}, a tangible society that you can reach out and touch in which everyone is content." 
    return self
  end

  def say_hello
    self.define
  end

  def say_hello_again
    define
  end
end

# instantiate a new Utopia object and store it in a variable called 'madison'

madison = Utopia.new("Mikael")

# Examine each of the following commands, (run them using pry if you need to) and briefly describe what each one does in a comment underneath

Utopia.define
# "self" here refers to Utopia, because the method define was called on the class. "self.define" returns "I am the bodiless notion of a near-perfect society."

madison.define
# The public "define" method is called on madison, which is an instantiated Utopia object. I instantiated it with "Mikael", so it returns "I am Mikael, a tangible society that you can reach out and touch in which everyone is content."

madison.say_hello
# The public "say_hello" method calls "self.define", but "self" in this case is still referring to madison, an instantiated Utopia object.

madison.say_hello_again
# The public method define is called from inside the "say_hello_again" method, which returns the string with @name interpolated into it.

# Now enter the following and examine the output

Utopia.define
# Same as above...try to examine the difference between "self" in this case and "self" in the three cases above.

Utopia.say_hello
# there's no "say_hello" method defined for the class.

Utopia.say_hello_again
# there's no "say_hello_again" method defined for the class.


# Part II. Arrays, sorting and blocks

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

random_animals.each do |animal|
  puts animal + "s"
end

# Return an array of the animals sorted alphabetically

random_animals.sort

# Return an array of the animals sorted reverse alphabetically

random_animals.sort do |a, b|
  b <=> a
end

# Return an array of the animals with each individual string reversed

random_animals.map do |animal|
  animal.reverse
end

# Return an array of the animals sorted by word length (low to high)

random_animals.sort_by do |animal|
  animal.length
end

# Return an array of the animals sorted alphabetically by the last character in the string

random_animals.sort_by do |animal|
  animal[-1]
end



# Part III. Digging for Dinosaurs with John Hammond

hammonds_mines = { 
  :nicaragua => {
    :depth => "200 meters",
    :annual_budget => 1_500_000,
    :specimens => [
      "Tyrannosaurus Rex", 
      "Stegosaurous", 
      "Triceratops",
      "Velociraptor"
    ]
  },
  :buenos_aires => {
    :depth => "400 meters",
    :annual_budget => 1_000_000,
    :specimens => [
      "Dilophosaurus", 
      "Brachiosaurus"
    ]
  }, 
  :mexico => {
    :depth => "350 meters",
    :annual_budget => 900_000,
    :specimens => [
      "Gallimimus",
      "Parasaurolophus"
    ]
  }
}

# Access the depth of John Hammond's mine in Mexico.
hammonds_mines[:mexico][:depth]

# Access the annual budget for Hammond's mine in Buenos Airies.
hammonds_mines[:buenos_aires][:annual_budget]

# Access the stegosaurous.
hammonds_mines[:nicaragua][:specimens][1]

# Access the dinosaur DNA specimens found in Nicaragua.
hammonds_mines[:nicaragua][:specimens]

# Access the "Parasaurolophus" specimen.
hammonds_mines[:mexico][:specimens][1]

# Your budget has been cut. Return an array, low_budget_mines, of only the mines with a budget at or below 100_000_000

low_budget_mines = hammonds_mines.map do |country, mine|
  if mine[:annual_budget] <= 100_000_000
    mine
  end
end

# Your budget has been re-upped and you've decided you're going to open a park using the DNA specimens found in Nicaragua (they're the most popular). But there's a big problem; It's a liability to create dinosaurs that can breed in the wild, so you have to add a dash of asexual frog dna to ensure they can't breed, BUT YOU CAN'T RUIN THE ORIGINAL SPECIMENS. Thankfully, you have an ace programmer, Dennis Nedrey, who tells you about a hot new array method called .map, which allows you to create a new array based on another. Create an array of dinosaurs specimens, each "with a dash of asexual frog DNA".

frog_dna = hammonds_mines[:nicaragua][:specimens].map do |specimen|
  specimen + " with a dash of asexual frog DNA"
end










