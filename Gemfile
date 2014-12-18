source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
	gem 'sqlite3'
end

group :production do
	gem 'pg'
end

group :assets do
	gem 'coffee-rails', '~> 4.0.0'
	gem 'uglifier', '>= 1.3.0'
	gem 'sass-rails', '~> 4.0.0'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'							# makes following links faster
gem 'jbuilder', '~> 1.2'			# Build JSON APIs with ease.

#group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
#  gem 'sdoc', require: false
#end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]