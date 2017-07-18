require 'spec_helper'

RSpec.describe Spree::Api::V1::AuthController, type: :controller do
  render_views

  describe 'Get token by email and password' do
    it 'should return spree_api_key as token' do
      user = create(:user)
      post :token, params: {email: user.login, password: 'secret'}, format: :json
      expect(response).to have_http_status(:success)
      expect((response.body)['token']).to be_present
    end
  end

  describe 'Login with facebook access token' do
    it 'should return spree_api_key as token' do
      user = create(:user)
      facebook_access_token = "EAAFYL7qyy4MBAPDAMHYtUEel7IgvfQ8Uajcn42NAIrIps3cNy\
                              1mDgi2oEnmixRzQ3zSQNmV3tIZBZBvKJDC2exs7ZCS6fRDISI5Y\
                              hZABSncPJZCTKY1csP57jHXZCC6P3ofggZAU3xC0izotcx8EDDd\
                              UhIRSwK2GafJPuZB6KxmiQIWXUOA12wTtM6XZCZAsJtf4ZBt50N\
                              IPLYa3GMQOndJ5W8V"
      post :facebook, params: {facebook_access_token: facebook_access_token}, format: :json
      expect(response).to have_http_status(:success)
      expect((response.body)['token']).to be_present
    end
  end

end