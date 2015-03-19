require 'bike'

describe Bike do
  # it { is_expected.to respond_to :broken? }
  context 'when working' do
    it { is_expected.not_to be_broken }
  end
end
