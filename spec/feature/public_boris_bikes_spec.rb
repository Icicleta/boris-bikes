require 'capybara/rspec'
require 'docking_station'

feature 'Member of public can release a bike' do
  scenario 'Docking Station releases a not broken bike' do
    docking_station = DockingStation.new
    docking_station.dock(Bike.new)
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
  scenario 'if the docking station is empty a bike is not released' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'No Bikes'
  end
end
