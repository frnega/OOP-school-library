require_relative 'helper_spec'

describe Rental do
  before :each do
    @rental = Rental.new(Date.today, 'Rock And Roll', 'John Doe')
  end
  context 'given four arguments' do
    it 'is an object of Rental ' do
      expect(@rental).to be_an_instance_of(Rental)
    end

    it 'has given data' do
      expect(@rental).to have_attributes(date: Date.today, book: 'Rock And Roll', person: 'John Doe')
    end
  end
end
