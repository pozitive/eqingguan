source 'https://rubygems.org'
ruby "2.1.0"
gem 'rails', '4.0.3'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'rails_12factor', group: :production
gem "haml-rails"
gem 'compass-rails', github: "Compass/compass-rails"
gem 'foundation-rails'
gem 'figaro'
gem 'devise'
gem 'high_voltage', '~> 2.1.0'
gem 'foundation-icons-sass-rails'
gem 'friendly_id'
gem 'redcarpet'
gem 'social-share-button'
gem 'bcrypt-ruby', '~> 3.0.0' # Use ActiveModel has_secure_password
gem 'unicorn' # Use unicorn as the app server
gem 'capistrano', group: :development # Use Capistrano for deployment
gem 'capistrano-rbenv'
gem 'capistrano-bundler'
gem 'capistrano-rails'
gem 'yaml_db', github: 'jetthoughts/yaml_db', ref: 'fb4b6bd7e12de3cffa93e0a298a1e5253d7e92ba'
gem 'ancestry'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'capybara' # Simulates user actions for cucumber
  gem 'cucumber-rails', :require => false # Cucmber features
  gem 'capybara-webkit'  # Headless driver for capybara
  gem 'webrat'  # Another Headless driver for capybara
  gem 'launchy' # Opens capybara response in your browser on save_and_open_page
  gem 'database_cleaner'  # Provides strategies for cleaning up the test db after test runs
  gem 'zeus' # rails preloading environment
end

group :development, :test do
  gem 'rspec-rails' #unit testing
  gem 'debugger'  # Use debugger
  gem 'colored'
end

