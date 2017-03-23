require 'httparty'

class Client
  include HTTParty

  base_uri 'localhost:3000'

  def self.find_user(id)
    res = get("/api/v1/users/1")
    if res.success?
      JSON.parse(res.body)
    end
  end
end
