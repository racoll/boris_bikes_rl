require 'docking_station'
require 'bike'

describe DockingStation do

  describe "#release_bike" do

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it "#release_bike releases working bikes" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_an_instance_of(Bike)
    expect(bike).to be_working
  end

  it "#release_bike should raise an error when there are no bikes" do
    expect{subject.release_bike}.to raise_error(RuntimeError, "no bikes")
  end

end

describe "#dock" do

  it "docks a bike at a docking station" do
    expect(subject).to respond_to(:dock).with(1).argument
    # expect(subject).to receive(:dock).with(an_instance_of(Bike))
  end

  it "should return the bike we dock" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "#bike should return a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end



end

# docking_station.release_bike.is_a? Bike
