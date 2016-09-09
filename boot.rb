ENV['APP_ENV'] = 'development' unless ENV['APP_ENV']

# allows `rake db:create` usage
ENV['RAILS_ENV'] = ENV['APP_ENV']
ENV['RACK_ENV' ] = ENV['APP_ENV']

require 'rubygems'
require 'bundler'

Bundler.require(:default, ENV['APP_ENV'].to_sym)

BASE_PATH = File.dirname(File.absolute_path(__FILE__))
$: << "#{BASE_PATH}/lib"

Dir["#{BASE_PATH}/config/initializers/*.rb"].each { |f| require f }

require 'model'
