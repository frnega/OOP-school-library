require_relative 'helper_spec'

describe Nameable do
  before :each do
    @nameable = Nameable.new
  end
  context 'given zero arguments' do
    it 'raises a NotImplementedError' do
      expect do
        @nameable.correct_name
      end.to raise_error(NotImplementedError, 'You must implement Nameable#correct_name')
    end
  end
end
