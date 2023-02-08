require_relative 'helper_spec'

describe BaseDecorator do
  before :each do
    @base_decorator = BaseDecorator.new('Hein Tay Zar')
  end
  context 'given one arguments' do
    it 'has a name' do
      expect(@base_decorator.correct_name).to eq('Hein Tay Zar')
    end

    it 'is a descndant of Nameable' do
      expect(@base_decorator).to be_a_kind_of(Nameable)
    end
  end
end

describe CapitalizeDecorator do
  before :each do
    @capitalize_decorator = CapitalizeDecorator.new('Hein Tay Zar')
  end
  context 'given one arguments' do
    it 'has a name' do
      expect(@capitalize_decorator.correct_name).to eq('Hein tay zar')
    end

    it 'is a descndant of Nameable' do
      expect(@capitalize_decorator).to be_a_kind_of(Nameable)
    end

    it 'is a descndant of CapitalizeDecorator' do
      expect(@capitalize_decorator).to be_a_kind_of(BaseDecorator)
    end
  end
end

describe TrimmerDecorator do
  before :each do
    @trimmer_decorator = TrimmerDecorator.new('Hein Tay Zar')
  end
  context 'given one arguments' do
    it 'has a name' do
      expect(@trimmer_decorator.correct_name).to eq('Hein Tay Z')
    end

    it 'is a descndant of Nameable' do
      expect(@trimmer_decorator).to be_a_kind_of(Nameable)
    end

    it 'is a descndant of CapitalizeDecorator' do
      expect(@trimmer_decorator).to be_a_kind_of(BaseDecorator)
    end
  end
end
