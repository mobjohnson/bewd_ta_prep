# Digging for Dinosaurs with John Hammond

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

# Return the depth of John Hammond's mine in Mexico.
hammonds_mines[:mexico][:depth]

# Return the annual budget for Hammond's mine in Buenos Airies.
hammonds_mines[:buenos_aires][:annual_budget]

# Return the stegosaurous.
hammonds_mines[:nicaragua][:specimens][1]

# Return the dinosaur DNA specimens found in Nicaragua.
hammonds_mines[:nicaragua][:specimens]

# Return the "Parasaurolophus" specimen.
hammonds_mines[:mexico][:specimens][1]

# Your budget has been cut. Return an array, low_budget_mines, 
# of only the mines with a budget at or below 100_000_000

low_budget_mines = hammonds_mines.map do |country, mine|
  if mine[:annual_budget] <= 100_000_000
    mine
  end
end

# Your budget has been re-upped and you've decided you're going to open a park using the DNA specimens found in Nicaragua (they're the most popular). But there's a big problem; It's a liability to create dinosaurs that can breed in the wild, so you have to add a dash of asexual frog dna to ensure they can't breed, BUT YOU CAN'T RUIN THE ORIGINAL SPECIMENS. Thankfully, you have an ace programmer, Dennis Nedrey, who tells you about a hot new array method called .map, which allows you to create a new array based on another. Create an array of dinosaurs specimens, each "with a dash of asexual frog DNA".

frog_dna = hammonds_mines[:nicaragua][:specimens].map do |specimen|
  specimen + " with a dash of asexual frog DNA"
end










