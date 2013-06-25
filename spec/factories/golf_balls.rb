# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :golf_ball do
    brand "Titleist"
    name "ProV1"
    mini_description "This is the best."
    description "This is the slightly longer description."
    year "2013"
    original_price "59.99"
    price "49.99"
    purchased 0
  end
end
