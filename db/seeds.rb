require 'faker'
categories = ["chinese", "italian", "japanese", "french", "belgian"]
puts "go"
Restaurant.destroy_all

5.times do
  Restaurant.create(
    name: Faker::Name.name,
    category: categories.sample,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
puts "fini"
