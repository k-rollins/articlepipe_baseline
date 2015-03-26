ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/mini_test'
require 'minitest/rails/capybara'
#require 'rack/test'
#require 'rails_helper'

#Capybara.configure do |c|
 
#  c.app_host = "http://localhost:3000"

#end
  
#class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
#  include Capybara::DSL
#end


class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionController::TestCase
  include Devise::TestHelpers
end

class Capybara::Rails::TestCase
  include Warden::Test::Helpers
   Warden.test_mode!

end
