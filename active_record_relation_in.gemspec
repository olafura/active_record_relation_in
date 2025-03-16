# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "active_record_relation_in/version"

Gem::Specification.new do |spec|
  spec.name                  = "active_record_relation_in"
  spec.version               = ActiveRecordRelationIn::VERSION
  spec.authors               = ["Olafur Arason"]
  spec.email                 = ["olafura@olafura.com"]

  spec.summary               = "Adds relation in functionality to Activerecord Postgres implementation"
  spec.description           = "Adds relation in functionality to Activerecord Postgres implementation"
  spec.homepage              = "https://github.com/olafura/active_record_relation_in"
  spec.license               = "MIT"

  spec.files                 = Dir["README.md", "lib/**/*"]
  spec.require_paths         = ["lib"]
  spec.required_ruby_version = ">= 3.1"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.add_dependency "activerecord", ">= 5.2", "< 8.1"
  spec.add_dependency "pg", "< 3.0"
end
