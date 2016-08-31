
require_relative 'boot'

require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks

desc "Start an irb session with the app loaded"
task :console do
  require './boot'
  require 'irb'
  ARGV.clear
  IRB.start
end
