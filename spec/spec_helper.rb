
# we never want to run tests in non-test environment
ENV['APP_ENV'] = 'test'

require_relative '../boot'
$: << "#{BASE_PATH}/spec"

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation

  config.mock_with :rspec
  config.expect_with :rspec
  config.raise_errors_for_deprecations!
end
