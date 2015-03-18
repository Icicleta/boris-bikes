require 'bike'

describe Bike do
  # it 'Bike should respond to be #broken?' do
  #   expect(subject).to respond_to :broken?
  # end
  context 'when created' do
    it 'Bike should not be #broken?' do
      expect(subject).not_to be_broken
    end
  end
end
