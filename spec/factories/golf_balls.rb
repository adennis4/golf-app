# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :golf_ball do
    brand "MyString"
    name "MyString"
    description "MyString"
    year "MyString"
    price "9.99"
    purchased 1
  end
end
