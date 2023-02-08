require_relative 'helper_spec'

describe Classroom do
    before :each do
      @classroom = Classroom.new('Classrom 1')
    end
    context 'given one argument' do
      it 'is an object of Classroom ' do
        expect(@classroom).to be_an_instance_of(Classroom)
      end

      it 'has the given data ' do
        expect(@classroom.label).to eq('Classrom 1')
      end
    end
  end