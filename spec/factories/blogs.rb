FactoryBot.define do
  factory :blog do
    tytle {Faker::Lorem.sentence}
    start_time { Faker::Time.strftime("%H:%M") }
    content {Faker::Lorem.sentence}
  end
end
