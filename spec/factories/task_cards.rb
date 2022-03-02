FactoryBot.define do
  factory :task_card do
    title              { Faker::Game }
    memo               { 'これはサンプルです。' }
  end
end