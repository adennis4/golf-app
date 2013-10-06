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
    image_path ""

    factory :golf_ball_with_review do
      after(:create) do |golf_ball|
        FactoryGirl.create(:review, golf_ball: golf_ball)
      end
    end
  end
end
