
require "capybara/cucumber"
require "selenium-webdriver"
require 'capybara-screenshot/cucumber'
require 'capybara-screenshot'


Capybara.configure do |config|
  config.default_driver = :selenium_chrome # abrir o chomer
  # config.default_driver = :selenium_chrome_headless # abrir em headles não abre navegador
  config.default_max_wait_time = 5 # tempo máximo de espera
  #config.app_host = 'http://training-wheels-protocol.herokuapp.com' #url padrão
      
end

Capybara::Screenshot.register_filename_prefix_formatter(:cucumber) do |fault|
  'my_screenshot'
end