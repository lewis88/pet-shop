#------------------------------------------------------------------------------#
#---------- Pet Class ---------------------------------------------------------#
#------------------------------------------------------------------------------#

require( 'pg' )
require_relative( '../db/runner.rb' )
require_relative( 'shop.rb')

def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @pet_type = options['pet_type']
    @shop_id = options['shop_id'].to_i
  end

  def save()
    sql = "INSERT INTO pets (name, pet_type, shop_id)
      VALUES ('#{@name}', '#{@pet_type}', #{@shop_id})
      RETURNING *"
    pet = SqlRunner.run( sql )[0]
    result = Pet.new( pet )
    return result
  end

end
