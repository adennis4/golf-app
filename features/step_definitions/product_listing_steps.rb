Given 'I am a non-signed in user' do
  FactoryGirl.build(:user)
  @titleist = FactoryGirl.create(:golf_ball_with_review, brand: 'Titleist')
  @nike = FactoryGirl.create(:golf_ball_with_review, brand: 'Nike')
  FactoryGirl.create(:golf_ball_with_review, brand: 'TaylorMade')
end

When 'I land on the home page' do
  visit '/'
end

Then 'I see a list of golf ball brands' do
  within '.nav.nav-stacked' do
    page.all('li').count.should == 3
    page.should have_content "TaylorMade"
  end
end

Then 'I see the featured brand' do
  within '.breadcrumb .active' do
    page.should have_content @titleist.brand
  end

  within 'h3.span3.product-info' do
    page.should have_content "#{@titleist.brand} #{@titleist.name}"
  end
end

Then 'I see the featured brand suggested retail price' do
  within '.price-small' do
    page.should have_content "$#{@titleist.original_price}"
  end
end

Then 'I see the featured brand actual price' do
  within '.price-big' do
    page.should have_content "$#{@titleist.price}"
  end
end

Then 'I see the featured brand shorter description' do
  within '.small-desc.side' do
    page.should have_content "#{@titleist.mini_description}"
  end
end

Then 'I see the featured brand longer description' do
  within '.span9.small-desc' do
    page.should have_content "#{@titleist.description}"
  end
end

Then 'I see a buy button' do
  within '.btn.btn-primary.btn-custom' do
    page.should have_content "Buy!"
  end
end

Then 'I see the featured brand reviews' do
  within '.footer .reviews' do
    page.should have_content "REVIEWS"
  end
end

Then /^I see a list of reviews for "(.*)"$/ do |brand|
  golf_ball = brand == "titleist" ? @titleist : @nike
  within '.footer .reviews' do
    page.should have_content golf_ball.reviews.first.title
  end
end

When 'I click "Nike"' do
  within '.span3.sidebar' do
    page.all('a')[1].click
  end
end
