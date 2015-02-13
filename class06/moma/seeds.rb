require_relative './moma'

Painting.destroy_all
Artist.destroy_all

Artist.create(
  [
    { name: 'Claude Monet', nationality: 'French'},
    { name: 'Pablo Picasso', nationality: 'Spanish'},
    { name: 'Andy Warhol', nationality: 'American'}
  ]
)


cm = Artist.find_by(name: "Claude Monet")
pp = Artist.find_by(name: "Pablo Picasso")
aw = Artist.find_by(name: "Andy Warhol")

my_fav = Painting.create(title: "Woman with a Parasol", artist: cm)
sr = Painting.create(title: "Starry Night", artist: pp)
mm = Painting.create(title: "Marilyn Monroe", artist: aw)
g = Painting.create(title: "Guernica", artist: pp)



binding.pry
