
vg = Artist.create( name: 'Vincent Van Gough', nationality: 'Dutch')

sn = Painting.create( title: 'Starry Night', artist: vg)

Artist.all

Painting.all
Artist.find(12)

Artist.find_by(name: 'Vincent Van Gough')

Artist.where(nationality: 'Spannish')

Painting.find(1)

Painting.find_by(title: 'Guernica')

Painting.where(artist: 'Pablo Picasso')

pp.paintings
or
Artist.find_by(name: 'Pablo Picasso').paintings

Painting.find_by(title: 'Guernica').artist

Artist.find_by(name: 'Vincent Van Gough').update(nationality: 'American')


pp = Artist.find_by(name: 'Pablo Picasso')
Painting.find_by(title: 'Starry Night').update(artist: pp)
