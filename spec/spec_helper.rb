# frozen_string_literal: true

require "bundler/gem_tasks"

require 'active_record'
require "active_record_relation_in"
require "support/databases"


Databases.connect_to_sqlite

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
