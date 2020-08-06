# frozen_string_literal: true

require 'bundler/setup'
require 'ez/tracer'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.filter_run_when_matching :focus

  config.around(:each) do |example|
    aggregate_failures do
      example.run
    end
  end
end
