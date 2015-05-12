FactoryGirl.define do
  factory :dwelling do
    name Faker::Name.name
    address1 Faker::Address.street_address
    address2 Faker::Address.secondary_address
    city Faker::Address.city
    state Faker::Address.state_abbr
    postal Faker::Address.postcode
    phone Faker::PhoneNumber.phone_number
  end

end
