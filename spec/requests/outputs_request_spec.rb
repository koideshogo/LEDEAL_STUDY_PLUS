# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Outputs', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/outputs/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/outputs/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/outputs/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/outputs/edit'
      expect(response).to have_http_status(:success)
    end
  end
end
