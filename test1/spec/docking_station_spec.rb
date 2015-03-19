require 'docking_station'

describe DockingStation do
  it 'DockingStation should respond to #release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'releases bikes that are not broken' do
    subject.dock double :bike, broken?: false
    bike = subject.release_bike
    expect(bike).not_to be_broken
  end
  # it { is_expected.to respond_to :dock }
  it 'can dock a bike' do
    expect(subject.dock :bike).to eq :bike
  end
  it 'raises error when no bikes available' do
    expect { subject.release_bike }.to raise_error 'No Bikes Available'
  end
end
