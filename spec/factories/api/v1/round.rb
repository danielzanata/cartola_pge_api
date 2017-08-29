FactoryGirl.define do
  factory :round, class: Api::V1::Round do
    number     { Faker::Number.number(2) }
    golden     { [true, false][rand(1)] }
    finished   { false }
  end
end
