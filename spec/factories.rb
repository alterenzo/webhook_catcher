
FactoryGirl.define do
  factory :event do
    address "asdasd@asd.com"
    email_type { ["UserConfirmation","Order","Shipment","ReferAFriend"].sample }
    event_type { ["open","click","send"].sample }
    timestamp 1.day.ago
  end
  sequence :email do |n|
    "user#{n}@test.com"
  end
end
