require 'docking_station'
describe DockingStation do
  it 'docking station releases a bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'release a not broken bike' do
    subject.dock(double(:bike, broken?: false))
    fake_bike = subject.release_bike
    expect(fake_bike).not_to be_broken
  end
  it 'docks a bike' do
    expect(subject.dock(:bike)).to eq :bike
  end
  it 'raises an error when no bikes avaialable' do
    expect { subject.release_bike }.to raise_error 'No Bikes'
  end
end
