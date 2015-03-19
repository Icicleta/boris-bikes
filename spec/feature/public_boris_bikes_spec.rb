require 'capybara/rspec'
require 'docking_station'

feature 'Member of public can release a bike' do
  scenario 'Docking Station releases a not broken bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
end
