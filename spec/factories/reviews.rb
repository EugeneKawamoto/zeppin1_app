FactoryBot.define do
  factory :review do
    comment { Faker::Lorem.characters(number: 1000) }
    rate { Faker::Lorem.characters(number: 5) }
    user
    restaurant
    menu
  end
end
