require 'docking_station'
describe DockingStation do
  it 'docking station releases a bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'release a not broken bike' do
    expect(subject.release_bike).not_to be_broken
  end
end
