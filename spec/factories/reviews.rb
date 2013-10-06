# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    body "Hit em straight."
    title "This is the title of the review."
    rating 5
    user_id 1
    golf_ball
  end
end
