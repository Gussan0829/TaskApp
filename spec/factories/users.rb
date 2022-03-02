FactoryBot.define do
  factory :user, aliases: [:follow] do
    nickname              { Faker::Lorem.characters(number: 10) }
    email                 { Faker::Internet.free_email }
    password              { '1q2w3e4r' }
    password_confirmation { password }
  end
end