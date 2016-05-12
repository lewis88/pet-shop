#------------------------------------------------------------------------------#
#------- Shop Class -----------------------------------------------------------#
#------------------------------------------------------------------------------#

require( 'PG' )
require_relative( '../db/runner.rb')

class Shop

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @address = options['address']
    @stock_type = options['stock_type']
  end

  def save()
    sql = "INSERT INTO shop (name, address, stock_type)
      VALUES ('#{@name}', '#{@address}', '#{@stock_type}')
      RETURNING *"
    album = SqlRunner.run( sql )[0]
    result = Shop.new( shop )
    return result
  end

end
