require 'faker'
FactoryGirl.define do
  factory :user do 
    email {Faker::Internet.email}
    name {Faker::Internet.name}
    password '123'
  end
end