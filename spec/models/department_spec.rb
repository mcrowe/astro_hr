require 'spec_helper'

describe Department do
  it 'requires a name' do
    build(:department, name: nil).should_not be_valid
  end

  it 'requires budget to be an integer' do
    [nil, '', 'string', 1.5].each do |budget|
      build(:department, budget: budget).should_not be_valid
    end

    build(:department, budget: 5).should be_valid
  end

  it 'can have categories' do
    cat1 = create(:category)
    cat2 = create(:category)

    department = create(:department)

    department.categories.should == []

    department.categories << cat1

    department.categories.should == [cat1]

    department.categories << cat2

    department.categories.should == [cat1, cat2]
  end
end