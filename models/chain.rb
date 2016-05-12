require_relative( 'pet.rb' )
require_relative( 'pet_shop.rb' )

require( 'pry-byebug' )


# artist1 = Artist.new( { 'name' => 'One Direction'} ).save()
# album1 = Album.new( { 'name' => 'first album', 'artist_id' => artist1.id } ).save()

shop1 = Shop.new( { 'name' => 'Respectable Rodents',
  'address' => '20 Princess Street', 'stock_type' => 'Furry'} )
shop2 = Shop.new( { 'name' => 'Loving Lizards',
  'address' => '11 George Street', 'stock_type' => 'Scaley' } )
shop3 = Shop.new( { 'name' => 'Interesting Insects',
  'address' => '15 Queen Street', 'stock_type' => 'Itchy' } )

pet1 = Pet.new( { 'name' => 'Seamus', })

binding.pry
nil
