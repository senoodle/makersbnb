require 'capybara'
require 'rspec'
require 'capybara/rspec'
require 'features/web_helpers'
require 'pg'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = MakersBnB

RSpec.configure do |config|
  
  config.before(:each) do
    con = PG.connect :dbname => 'makersbnb_test'
    con.exec("TRUNCATE TABLE listings, users;")
  end

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end


  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups


end
