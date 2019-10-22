source ENV['GEM_SOURCE'] || "https://rubygems.org"

group :test do
  gem 'coveralls'
  gem 'facter'
  gem 'json_pure'
  gem 'metadata-json-lint'
  gem 'puppet'
  gem 'puppet-lint-absolute_classname-check'
  gem 'puppet-lint-classes_and_types_beginning_with_digits-check'
  gem 'puppet-lint-leading_zero-check'
  gem 'puppet-lint-resource_reference_syntax'
  gem 'puppet-lint-trailing_comma-check'
  gem 'puppet-lint-unquoted_string-check'
  gem 'puppet-lint-version_comparison-check'
  gem 'puppet-strings'
  gem 'puppetlabs_spec_helper'
  gem 'rake'
  gem 'rgen'
  gem 'rspec'
  gem 'rspec-puppet'
  gem 'rspec-puppet-facts'
  gem 'rubocop'
  gem 'rugged'
  gem 'semantic_puppet'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'yard'
end

group :development do
  gem 'guard-rake'
  gem 'puppet-blacksmith'
  gem 'travis'
  gem 'travis-lint'
end

group :acceptance do
  gem 'beaker', '~>4.0'
  gem 'beaker-docker'
  gem 'beaker-hiera'
  gem 'beaker-hostgenerator'
  gem 'beaker-module_install_helper'
  gem 'beaker-puppet', :git => 'https://github.com/thbe/beaker-puppet.git'
  gem 'beaker-puppet_install_helper'
  gem 'beaker-rspec'
  gem 'beaker-testmode_switcher'
end

group :documentation do
  gem 'github_changelog_generator'
end
