
database = YAML.load(File.read("#{BASE_PATH}/db/config.yml"))[ENV['APP_ENV']]
ActiveRecord::Base.establish_connection database
