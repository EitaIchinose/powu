FactoryBot.define do
  factory :event do
    title { 'テスト' }
    start_time { '2021-01-01 01:00:00' }
    association :user
    association :department
  end
end