require 'sinatra/base'
require 'sinatra/activerecord'
require './lib/lumberjack'

class Server < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  include Lumberjack

  use Rack::Auth::Basic do |username, password|
    username == ENV['API_USER'] && password == ENV['API_PASSWORD']
  end

  get '/' do
    'WOOOOOOO'
  end
end
