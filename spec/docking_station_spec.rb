require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end



  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_an_instance_of(Bike)
    expect(bike).to be_working
  end


  it "dock a bike at a docking station" do
    expect(subject).to respond_to(:dock).with(1).argument
    # expect(subject).to receive(:dock).with(an_instance_of(Bike))
  end


end

# docking_station.release_bike.is_a? Bike
