ActiveRecord::Base.transaction do

  Company.destroy_all
  Category.destroy_all
  Manager.destroy_all
  Course.destroy_all

  company = Company.create!(name: 'AstroBlasters')

  Manager.create!(email: 'delbegio@gmail.com', password: 'password', company: company)

  ['Development', 'Finance', 'Sales', 'Marketing'].each do |name|
    Category.create!(name: name)
  end

  100.times do
    Employee.create!(name: Faker::Name.name, email: Faker::Internet.email)
  end

  100.times do
    Course.create!(name: Faker::Company.name, start_date: Date.tomorrow, end_date: Date.tomorrow, description: Faker::Lorem.paragraph(sentence_count = 3), price: rand(100..1500), location: Faker::Address.city
)
  end

end