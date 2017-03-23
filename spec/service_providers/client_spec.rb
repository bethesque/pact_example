require_relative 'pact_helper'
require 'client'

describe Client, pact: true do
  before do
    Client.base_uri example_service.mock_service_base_url
  end
  let(:json_data) do
    {
      code: 0,
      data: {
        _id: 1,
        phone: '13800138000'
      }
    }
  end

  describe 'get user' do
    before do
      example_service.given('get user with id 1').
        upon_receiving('a requst for json data').
        with(method: :get, path: '/api/v1/users/1').
        will_respond_with(
          status: 200,
          body: json_data
      )
    end

    it 'can process the json payload from the provider' do
      res = Client.find_user(1)
      p res
      expect(res["code"]).to eq 0
    end
  end

end
