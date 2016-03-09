if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

require_relative './spec_helper_simplecov.rb'
require './lib/acronyms.rb'

RSpec.configure do |config|
  config.filter_run(focus: true)
  config.fail_fast = true
  config.run_all_when_everything_filtered = true
end
