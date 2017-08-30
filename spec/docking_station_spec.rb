require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  # it 'return_bike returns a bike' do
  #   expect(subject.release_bike.is_a? Bike).to eq true
  # end
  it 'return_bike returns a bike' do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
  it 'checks bike is working' do
    expect(subject.release_bike.working?).to eq true
  end
  # it { should be_a(Bike)}
end

# docking_station.release_bike.is_a? Bike
