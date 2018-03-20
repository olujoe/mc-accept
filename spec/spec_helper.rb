require "bundler/setup"
require "big_ted_newshub_moscollector_automation_api"
require_relative '../spec/helpers/config'

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.default_formatter = 'doc'
  config.tty = true

  config.before :all do
   @config = YAML.load_file 'spec/helpers/config.yml'
  end

end