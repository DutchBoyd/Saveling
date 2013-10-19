require 'spec_helper'

describe Category do
  it 'has a valid Factory' do
    FactoryGirl.build(:category).should be_valid
  end
end
