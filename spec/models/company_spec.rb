require 'spec_helper'

describe Company do

  it 'requires a name' do
    build(:company, name: nil).should_not be_valid
  end

end
