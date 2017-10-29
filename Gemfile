source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.2.5'
gem 'rails'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'pg'

gem 'activeadmin', github: 'activeadmin'
gem 'responders'
# gem 'active_material', github: 'vigetlabs/active_material'
gem 'devise'
gem 'draper'
gem 'pundit'
gem 'administrate'

gem 'settingslogic'
gem 'hash_all'
gem 'prawn'
gem 'rmagick'
gem 'geocoder'
gem 'paperclip'
gem 'fog-google'
gem 'memcachier'
gem 'dalli'
gem 'rqrcode'
gem 'mini_magick'
gem 'rollbar'
gem 'dropbox-sdk'
gem 'boxr'
gem 'mailchimp-api'
gem 'twilio-ruby'
gem 'httparty'
gem 'oj'
gem 'business_time'
gem 'progress_bar'
gem 'high_voltage'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'
gem 'omniauth-twitter'
gem 'omniauth-linkedin-oauth2'
gem 'omniauth-facebook'
gem 'rack-cors', :require => 'rack/cors'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'foreman'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'hub', require: nil
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring-commands-rspec'
  gem 'letter_opener'
  gem 'binding_of_caller'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
