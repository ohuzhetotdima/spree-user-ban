# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_user_ban'
  s.version     = '1.3.2'
  s.summary     = 'Ban registered Spree users.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'FreeRunning Technologies'
  s.email     = 'contact@freerunningtech.com'
  s.homepage  = 'http://www.freerunningtech.com'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.0.0'
  s.add_dependency 'spree_auth_devise'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
