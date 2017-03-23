require 'bundler'
require 'rspec/core/rake_task'
Bundler.setup(:default, :development)

$:.unshift 'lib'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

require 'pact/tasks'
#require 'pact/provider/proxy/tasks'
# Pact::ProxyVerificationTask.new :monolith do | task |
#   task.pact_url './spec/pacts/example-example_service.json', :pact_helper => './spec/service_consumers/pact_helper'
#   task.provider_base_url 'http://localhost:4000'
# end
