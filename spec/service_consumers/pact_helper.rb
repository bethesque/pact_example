require 'pact/provider/rspec'
require 'provider'

Pact.provider_states_for "example" do

  provider_state "get user with id 1" do
    no_op
    # set_up do
      # # Your set up code goes here
    # end
  end
end

Pact.service_provider "example service" do

  app { Provider }

  honours_pact_with 'example service' do
    pact_uri './spec/pacts/example-example_service.json'
  end

end
