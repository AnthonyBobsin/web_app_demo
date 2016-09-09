require_relative '../rest_spec_helper'

describe REST::Base do
  include_context :rest_spec_helper

  context 'GET /api' do
    it 'responds with "hello world"' do
      get "/api"

      expect(last_response.status).to eq 200
      expect(last_response.body).to eq "\"hello world\""
    end
  end
end
