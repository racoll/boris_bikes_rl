require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    if @bike.is_a? Bike
      return Bike.new
    else
      raise "no bikes"
    end
  end

  def dock(bike)
    @bike = bike
    return bike
  end

  # def see_bike
  #   return @bike
  # end

end

# attr_reader :bike

# class DockingStation
#
  # def initialize
  #   @bike = Bike.new
  # end
#
#   def release_bike
#     return bike.new
#   end
#
#   def dock(bike)
#   end
#
# end
