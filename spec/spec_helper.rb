require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'factory_bot'
require 'pry'
require 'webmock/rspec'
require 'support/vcr_setup'
require "json_matchers/rspec"
Dir["./spec/support/helpers/*.rb"].each { |f| require f }
Dir[Rails.root.join('spec/support/shared_examples/**/*.rb')].each { |f| require f }

WebMock.disable_net_connect!(allow_localhost: true)

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.infer_spec_type_from_file_location!
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::ControllerHelpers, type: :view
  config.include Helpers::Authentication, type: :request

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.order = :random

  config.before(:suite) do
    DatabaseCleaner.allow_remote_database_url = true
    # DatabaseCleaner.url_whitelist = %w[postgresql://postgres:postgres@postgres:5432/$POSTGRES_DB].freeze
    DatabaseCleaner.strategy = :truncation
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
  config.before(:each) do
    allow_any_instance_of(Check).to(
      receive(:promo_action_validation).and_return(double(validate: nil))
    )
  end
end

JsonMatchers.schema_root = "spec/support/api/schemas"
RSpec::Matchers.define_negated_matcher :not_change, :change
Rails.application.load_tasks
