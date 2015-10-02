FactoryGirl.define do

  factory :course do
    title Faker::Lorem.words
    description Faker::Lorem.paragraph
    cost Faker::Number.positive
  end

end