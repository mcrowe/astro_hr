require 'spec_helper'

describe Manager do

  it 'requires a valid email' do
    [nil, '', 'bob', 'bob@gmail'].each do |invalid_email|
      build(:manager, email: invalid_email).should_not be_valid
    end

    build(:manager, email: 'bob@bobmail.com').should be_valid
  end

  it 'can belong to a company' do
    company = create(:company)
    manager = create(:manager, company: company)

    manager.reload.company.should == company
  end

  it 'sets the company when created' do
    company = create(:company)
    manager = create(:manager)

    manager.company.should == company
  end

end
