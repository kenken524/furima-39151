FactoryBot.define do
  factory :item do
    name              { Faker::Lorem.characters(number: rand(1..40)) }
    info              { Faker::Lorem.characters(number: rand(1..1000)) }
    category_id       { Faker::Number.between(from: 2, to: 11) }
    status_id         { Faker::Number.between(from: 2, to: 7) }
    delivery_cost_id  { Faker::Number.between(from: 2, to: 3) }
    prefecture_id     { Faker::Number.between(from: 2, to: 48) }
    day_to_ship_id    { Faker::Number.between(from: 2, to: 4) }
    price             { Faker::Commerce.price(range: 300..9_999_999).to_i }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
