require 'rails_helper'

RSpec.describe Dwelling, type: :model do
  before(:each) do
    @dwelling = build(:dwelling)
  end  

  it "must have a state" do
    @dwelling.state = ''
    expect(@dwelling).to be_invalid
  end
end
