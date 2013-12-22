require 'bundler/setup'

require 'sinatra'
require 'slim'

class App < Sinatra::Base

  set :db_name, 'ember-ideavote'

  get '/' do
    slim :index, locals: { db_name: settings.db_name }
  end
end
