# frozen_string_literal: true

require_relative "lib/active_record_relation_in/version"

Gem::Specification.new do |spec|
  spec.name = "active_record_relation_in"
  spec.version = ActiveRecordRelationIn::VERSION
  spec.authors = ["Olafur Arason"]
  spec.email = ["olafura@olafura.com"]

  spec.summary = "Allow for relations using IN instead of AND"
  spec.description = "When combining activerecord relations you sometimes want to combine them with IN"
  spec.homepage = "https://github.com/olafura/active_record_relation_in"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/olafura/active_record_relation_in"
  spec.metadata["changelog_uri"] = "https://github.com/olafura/active_record_relation_in/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
