require_relative '../rest/base'

shared_context :rest_spec_helper do
  include Rack::Test::Methods

  def app
    REST::Base
  end
end
