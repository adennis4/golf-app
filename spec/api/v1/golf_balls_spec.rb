require 'spec_helper'

describe 'api/golf_balls.json', type: :api do
  context 'all golf_balls viewable' do
    before do
      @ball = FactoryGirl.create(:golf_ball)
      FactoryGirl.create(:golf_ball)
      get "api/v1/golf_balls.json"
    end

    it 'returns a successful response' do
      response.status.should eq 200
    end

    it 'returns all golf balls' do
      JSON.parse(response.body).count.should eq 2
    end

    it 'returns all golf ball information' do
      golf_ball = JSON.parse(response.body).first
      expect(golf_ball["brand"]).to eq @ball.brand
      expect(golf_ball["name"]).to eq @ball.name
      expect(golf_ball["description"]).to eq @ball.description
      expect(golf_ball["year"]).to eq @ball.year
      expect(golf_ball["price"]).to eq @ball.price.to_s
    end
  end
end

describe 'api/golf_balls/ID.json', type: :api do
  context 'individual golf ball viewable' do
    before do
      @ball = FactoryGirl.create(:golf_ball)
      get "api/v1/golf_balls/#{@ball.id}.json"
    end

    let(:ball_request) { get "api/v1/golf_balls/89898989.json" }

    it 'returns a successful response' do
      response.status.should eq 200
    end

    it 'returns all golf ball information' do
      golf_ball = JSON.parse(response.body)
      expect(golf_ball["brand"]).to eq @ball.brand
      expect(golf_ball["name"]).to eq @ball.name
      expect(golf_ball["description"]).to eq @ball.description
      expect(golf_ball["year"]).to eq @ball.year
      expect(golf_ball["price"]).to eq @ball.price.to_s
    end

    it 'golf ball does not exist unsuccessful response' do
      expect { ball_request }.to raise_error ActiveRecord::RecordNotFound
    end
  end
end
