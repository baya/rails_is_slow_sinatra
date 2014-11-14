require 'bundler/setup'
Bundler.require

set :database, adapter: 'sqlite3', database: 'production.sqlite3'

class User < ActiveRecord::Base
end

get '/hello' do
  'Hello, World!'
end

get '/users' do
  @users = User.all.to_a
  haml :index
end
