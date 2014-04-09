require 'spec_helper'

describe Employee do
  it 'requires a name' do
    build(:employee, name: nil).should_not be_valid
  end

  it 'requires an email address' do
    build(:employee, email: nil).should_not be_valid
  end
end
