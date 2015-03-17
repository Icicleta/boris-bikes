require 'docking_station'

describe DockingStation do
  it 'DockingStation should respond to #release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'releases bikes that are not broken' do
    bike = subject.release_bike
    expect(bike).not_to be_broken
  end
end
