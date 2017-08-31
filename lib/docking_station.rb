require_relative 'bike'

class DockingStation

  def release_bike
    return Bike.new
  end

  def dock(bike)
    return bike
  end

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
