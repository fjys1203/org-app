FactoryBot.define do
  factory :user do

    nickname              {'test'}
    last_name             {'あああ'}
    first_name            {'あああ'}
    email                 {Faker::Internet.free_email}
    password              {'1a' + Faker::Internet.password(min_length: 6)}
    birthday              {'1990-01-01'}

  end
end
