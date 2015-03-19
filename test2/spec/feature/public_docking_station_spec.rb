require 'docking_station'
require 'capybara/rspec'

feature 'bikes can be access by public member' do
  scenario 'bikes is released if not broken' do
    dock = DockingStation.new
    bike = dock.release_bike
    expect(bike).not_to be_broken
  end
end
