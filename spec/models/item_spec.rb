require 'spec_helper'

describe Item do
  it 'has a valid Factory' do
    FactoryGirl.build(:item).should be_valid
  end
end
