require 'site_prism'
require 'rspec'
require 'report_builder'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)

 Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
          'chromeOptions' => { 'args' => ['--disable-infobars',
                                          'window-size=1600,1024'] }
        )
 )
 end

Capybara.configure do |config|
    config.default_driver= :selenium
    config.default_max_wait_time= 30
    config.app_host='http://automationpractice.com/index.php'
    end

    Capybara.configure do |config|
      config.default_driver = :selenium_chrome #roda no navegador
      #config.default_driver = :selenium_chrome_headless 
  end