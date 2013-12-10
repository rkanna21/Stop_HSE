require 'spec_helper'

describe Card do
  describe '#fields' do

    subject { create :card }
    it 'exists' do
      expect { subject.fields }.not_to raise_error
    end

    it 'is enumerable with each' do
      expect { subject.fields.each }.not_to raise_error 
    end

    it 'is indexed by name' do
      subject.fields << Field.new(key: :item1)

      subject.fields[:item1].should be_a Field
    end
    
  end
end
