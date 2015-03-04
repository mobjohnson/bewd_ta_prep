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

# Examine each of the following commands, (run them using pry if you need to) and briefly describe what each one does in a comment underneath
Utopia.define
madison.define
madison.say_hello
madison.say_hello_again

# Now enter the following and examine the output

Utopia.define
Utopia.say_hello
Utopia.say_hello_again

# Part II. Arrays, sorting and blocks

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

# Return an array of the animals sorted alphabetically

# Return an array of the animals sorted reverse alphabetically

# Return an array of the animals with each individual string reversed

# Return an array of the animals sorted by word length (low to high)

# Return an array of the animals sorted alphabetically by the last character in the string



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

# Access the annual budget for Hammond's mine in Buenos Airies.

# Access the stegosaurous.

# Access the dinosaur DNA specimens found in Nicaragua.

# Access the "Parasaurolophus" specimen.

# Your budget has been cut. Return an array, low_budget_mines, of only the mines with a budget at or below 100_000_000
# Your budget has been re-upped and you've decided you're going to open a park using the DNA specimens found in Nicaragua (they're the most popular). But there's a big problem; It's a liability to create dinosaurs that can breed in the wild, so you have to add a dash of asexual frog dna to ensure they can't breed, BUT YOU CAN'T RUIN THE ORIGINAL SPECIMENS. Thankfully, you have an ace programmer, Dennis Nedrey, who tells you about a hot new array method called .map, which allows you to create a new array based on another. Create an array of dinosaurs specimens, each "with a dash of asexual frog DNA".








