require 'spec_helper'

describe Review do
  describe 'validations' do
    it 'requires a title' do
      FactoryGirl.build(:review, title: '').should_not be_valid
    end

    it 'requires a body' do
      FactoryGirl.build(:review, body: '').should_not be_valid
    end

    it 'requires a rating' do
      FactoryGirl.build(:review, rating: '').should_not be_valid
    end
  end
end
