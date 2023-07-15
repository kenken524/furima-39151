FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 5) }
    email                 { Faker::Internet.free_email }
    password              { 'test0000' }
    password_confirmation { password }
    first_name            { 'テスト' }
    last_name             { '太郎' }
    first_name_kana       { 'テスト' }
    last_name_kana        { 'タロウ' }
    birthday              { '1991-07-19' }
  end
end
