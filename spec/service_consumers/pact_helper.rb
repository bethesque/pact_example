require 'pact/provider/rspec'

Pact.provider_states_for "example" do

  provider_state "get user with id 1" do
    no_op
    # set_up do
      # # Your set up code goes here
    # end
  end
end

Pact.service_provider "example service" do

  honours_pact_with 'example service' do
    pact_uri ''
  end

end
