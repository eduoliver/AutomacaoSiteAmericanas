require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'dotenv'
Dotenv.load
require 'bundler'
require 'yaml'
require 'selenium-webdriver'

Capybara.default_driver =:selenium
Capybara.current_driver =:selenium

# #--------------------------------
Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver =:chrome
Capybara.default_max_wait_time = 20
#-------------------------------------------------------------------------------


ENV["ENVIRONMENT"] ||= "dev"
Bundler.require(:default, ENV["ENVIRONMENT"].to_sym)

$application = YAML.load_file('./config/application.yml')[ENV["ENVIRONMENT"]]
