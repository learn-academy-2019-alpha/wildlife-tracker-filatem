require 'rails_helper'

RSpec.describe Animal, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  let(:add){ Animal.new }
  
  it "should be validate name" do
      expect(add.valid?).to be false 
      expect(add.errors.messages[:name].nil?).to be false
    end
    
    it "should be validate latin_name"
        expect(add.valid?).to be false
        expect(add.errors.messages[:latin_name].nil?).to be true
    end
    
    it "should be validate latin_name"
        expect(add.valid?).to be false
        expect(add.errors.messages[:kingdom].nil?).to be true
    end
end
