# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    title "Great balls"
    body "Hit em straight."
    rating 5
    golf_ball_id 1
    user_id 1
  end
end
