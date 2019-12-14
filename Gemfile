# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 2.6.5'

gem 'rails', '~> 6.0'

gem 'bootsnap', require: false
gem 'haml-rails'
gem 'kaminari'
gem 'meta-tags'
gem 'mysql2'
gem 'newrelic_rpm'
gem 'puma'
gem 'rack-cors'
gem 'rollbar'
gem 'sass-rails'
gem 'seed-fu'
gem 'settingslogic'
gem 'sidekiq'
gem 'sprockets'
gem 'uglifier'
gem 'webpacker'

group :development, :test do
  gem 'brakeman'
  gem 'bullet'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'fasterer', require: false
  gem 'haml_lint', require: false
  # https://qiita.com/kou_pg_0131/items/e9affefa7fad4fb56fc5 でおちるspecがある
  # https://github.com/rubyforgood/partner/issues/167 が入るまではとりあえずbeta版
  gem 'rspec-rails', '~> 4.0.0.beta3'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubycritic', require: false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'rspec-sidekiq'
  gem 'rspec_junit_formatter'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end
