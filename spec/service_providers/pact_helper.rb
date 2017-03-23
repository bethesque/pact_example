require 'spec_helper'
require 'pact/consumer/rspec'

Pact.service_consumer "example" do
  has_pact_with "example service" do
    mock_service :example_service do
      port 1234
    end
  end
end
