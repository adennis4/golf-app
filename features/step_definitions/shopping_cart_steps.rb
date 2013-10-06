Then 'I am taken to the shopping cart' do
  within 'h1' do
    page.should have_content 'MY CART'
  end

  page.should have_selector '.main-checkout .btn-checkout'
end
