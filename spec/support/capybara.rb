Capybara.register_driver :headless_chrome do |app|
  chrome_options = Selenium::WebDriver::Chrome::Options.new
  chrome_options.args << '--headless'

  driver = Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  driver.browser.manage.window.size = Selenium::WebDriver::Dimension.new(2000, 3000)
  driver
end

Capybara.javascript_driver = :headless_chrome
Capybara.default_max_wait_time = 5
Capybara.server = :puma, { Silent: true }