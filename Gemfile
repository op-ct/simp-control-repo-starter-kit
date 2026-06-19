source ENV['GEM_SOURCE'] || 'https://rubygems.org'

gem 'r10k'
gem 'hiera-eyaml'


openvox_gem = ENV['OPENVOX_GEM'] || ENV['PUPPET_GEM'] || 'openvox'
openvox_version = ENV['OPENVOX_VERSION'] || ENV['PUPPET_VERSION'] || '8.28.0'
linter_gem = ENV['OPENVOX_LINT_GEM'] || 'openvox-lint'

group :test do
  gem 'rake'
  gem openvox_gem, openvox_version
  gem linter_gem
  gem 'metadata_json_deps' # validates Puppetfile again latest modules on the Puppet Forge
  gem 'ra10ke'             # Helpful Puppetfile/r10k validation & maint tasks
  gem 'voxpupuli-test', '~> 14.0'
  gem 'puppet_metadata'
  gem 'rspec', '~> 3.0'
  gem 'rspec-puppet'
  #gem 'simp-rake-helpers', ENV.fetch('SIMP_RAKE_HELPERS_VERSION', '~> 5.0'), :require => false
  gem 'metadata-json-lint'
  gem 'onceover'
end

group :development do
  gem 'openvox-strings'
  gem 'pry'
  gem 'pry-doc'
  gem 'puppet-debugger'
end

#group :system_tests do
#  gem 'beaker-rspec'
#  gem 'simp-beaker-helpers', ENV.fetch('SIMP_BEAKER_HELPERS_VERSION', '~> 1.5')
#end
gem 'puppetfile-resolver'
