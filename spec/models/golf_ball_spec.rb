require 'spec_helper'

describe GolfBall do
  describe 'validations' do
    it 'requires a brand' do
      FactoryGirl.build(:golf_ball, brand: '').should_not be_valid
    end

    it 'requires a name' do
      FactoryGirl.build(:golf_ball, name: '').should_not be_valid
    end

    it 'requires a description' do
      FactoryGirl.build(:golf_ball, description: '').should_not be_valid
    end

    it 'requires a year' do
      FactoryGirl.build(:golf_ball, year: '').should_not be_valid
    end

    it 'requires a price' do
      FactoryGirl.build(:golf_ball, price: '').should_not be_valid
    end

    it 'requires year to be a number' do
      FactoryGirl.build(:golf_ball, year: 'year').should_not be_valid
    end

    it 'requires price to be a number' do
      FactoryGirl.build(:golf_ball, price: 'price').should_not be_valid
    end
  end
end
