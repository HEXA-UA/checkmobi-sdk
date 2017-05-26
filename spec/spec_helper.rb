require 'rubygems'
require 'bundler'
require 'bundler/setup'

Bundler.setup(:development)

require 'webmock/rspec'
require 'checkmobi'

require_relative 'unit/test_client'

# WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|

  # config.raise_errors_for_deprecations!
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  # config.disable_monkey_patching!

  # config.expect_with :rspec do |c|
  #   c.syntax = :expect
  # end
end