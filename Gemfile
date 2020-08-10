# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # binding.pryで必要
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  # テスト
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  # テスト用データ
  gem 'factory_bot_rails', '~> 4.10.0'
  gem 'faker'
  # コーディング規約, bundlerを使用するためfalse
  gem 'rails_best_practices', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rails_config'
  # 自動デプロイ
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # schema情報、routing情報の追記
  gem 'annotate'
  # デバッグ用
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15'
  # gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

group :production do
  gem 'unicorn', '5.4.1'
end

group :tools do
  # Migrationファイル圧縮に必要(使わなくても良い)
  gem 'squasher', '>= 0.6.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# ログイン機能
gem 'devise'
gem 'devise-i18n'
gem 'devise-i18n-views'

# 画像アップロード
gem 'carrierwave'
gem 'fog-aws'
gem 'mini_magick'

# FontAwesome
gem 'font-awesome-rails'
gem 'font-awesome-sass'

gem 'haml-rails'
gem 'kaminari'
gem 'sass-rails'

# カテゴリの分類
gem 'ancestry'

# 管理者権限で使用
gem 'cancancan'
gem 'rails_admin', '~> 2.0.0.beta'

# jQueryを使用するために必要
gem 'jquery-rails'
gem 'jquery-ui-rails'

# パンクズリスト使用のために必要
gem 'gretel'
# 検索機能実装のために必要
gem 'ransack'
