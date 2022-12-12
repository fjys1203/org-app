FactoryBot.define do
  factory :blog do
    association :user

    title {"aaa"}
    start_time { "2022-12-25-17:00" }
    content {"aaa"}
  end
end
