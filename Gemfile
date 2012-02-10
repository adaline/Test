source 'http://rubygems.org'

gem 'rails', '3.2.1'

group :test do
  gem 'turn', '~> 0.8.3', :require => false
end

group :development, :test do
  gem 'sqlite3'
  gem 'cucumber-rails'
  gem 'guard-cucumber'
  gem 'guard-bundler'
  gem 'libnotify'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'factory_girl_rails'
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'therubyracer'
end

group :production do
  gem 'mysql2'
end

gem 'jquery-rails'
gem 'sorcery'
gem 'ckeditor', :git => 'git://github.com/adaline/rails-ckeditor.git'
gem 'meta-tags', :require => 'meta_tags'
gem 'kaminari'
