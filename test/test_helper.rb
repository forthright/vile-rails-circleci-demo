ENV['RAILS_ENV'] ||= 'test'
require "simplecov"
require "simplecov-lcov"
class SimpleCov::Formatter::LcovFormatter
  def self.single_report_path
    File.join output_directory, "vile-rails-circleci-demo.lcov"
  end
end
SimpleCov::Formatter::LcovFormatter.report_with_single_file = true
SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::LcovFormatter
]
SimpleCov.start "rails"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
