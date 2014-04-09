FactoryGirl.define do

  factory :department do
    name { Faker::Name.name }
    budget 100
  end

end