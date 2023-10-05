source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'active_model_serializers'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise', '>= 4.7.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 7.1.0'

# Rails engine to introduce OAuth 2 provider functionality
gem 'doorkeeper', '>= 5.5.0'

# Define and serve live-updating Swagger JSON for Ruby apps.
gem 'swagger-blocks'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS)
gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '>= 6.2.0'
  gem 'rspec-rails', '>= 4.0.2'
  gem 'rubocop', require: false
end

group :development do
  gem 'listen', '~> 3.2'
end

group :test do
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
