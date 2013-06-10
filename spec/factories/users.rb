# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "Bubba"
    last_name "Watson"
    address "1234 Florida Dr. Florida, FL"
    phone_number "(888) 867-5309"
  end
end
