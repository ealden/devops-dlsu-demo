require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class App
  def articles
    @articles ||= ArticlesPage.new
  end
end

def site
  @app ||= App.new
end
