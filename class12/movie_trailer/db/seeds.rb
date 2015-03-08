# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
inter = Movie.create({title: 'Interstellar', year: 2014, poster_url: 'http://www.moviecricket.com/wp-content/uploads/2014/10/Interstellar-Main-One-Sheet-QUAD.jpg'}),
bird = Movie.create({title: 'Birdman', year: 2014, poster_url: 'http://pixel.nymag.com/content/dam/daily/vulture/2014/09/25/birdman-click.jpg'})
star = Movie.create({title: 'Star Trek', year: 2200, poster_url: 'http://www.impawards.com/2009/posters/star_trek_xi_ver16_xlg.jpg'})
