source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'bootstrap-sass', '2.0.0'
gem 'aws-s3', :require => 'aws/s3'
gem 'bcrypt-ruby', '3.0.1'
# gem 'formtastic', '2.2.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development, :test do
	gem 'sqlite3', '1.3.5'
	gem 'rspec-rails', '2.9.0'
	gem 'annotate', '~> 2.4.1.beta'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test do
	gem 'capybara'
	gem 'factory_girl_rails', '1.4.0'
end

group :production do
	gem 'pg'
end
