# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.1"
gem "rails", "7.1.3.2"
gem "sprockets-rails"
gem "pg", "~> 1.5"
gem "puma", "~> 6.4"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 5.2"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"
gem "devise"
gem "trestle"
gem "trestle-auth"
gem "trestle-tinymce"
gem "cssbundling-rails", "~> 1.4"

group :development, :test do
  gem "brakeman"
  gem "bundler-audit"
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]
  gem "rspec-rails"
  gem "rubocop-rails"
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-rspec"
end

group :development do
  gem 'annotate', git: 'https://github.com/ctran/annotate_models.git'
  gem "web-console"
  gem "rack-mini-profiler"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem 'shoulda-matchers', '~> 6.0'
  gem "simplecov"
end
