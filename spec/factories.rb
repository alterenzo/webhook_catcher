
FactoryGirl.define do
  factory :event do
    address { generate :email }
    email_type
    event_type { ["open","click","send"].sample }
    timestamp 1.day.ago
  end

  factory :email_type do
    name { generate :email_type_name }
  end

  sequence :email do |n|
    "user#{n}@test.com"
  end

  sequence :email_type_name do |n|
    "EmailType#{n}"
  end

end
