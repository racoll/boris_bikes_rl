require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }


  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end


  it 'docks something' do
      bike = Bike.new
      # We want to return the bike we dock
      expect(subject.dock(bike)).to eq bike
    end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # again, we need to return the bike we just docked
    expect(subject.bike).to eq bike
  end


  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # let's not dock a bike first
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  end
