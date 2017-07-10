require 'sinatra'
require 'ruby-hackernews'
include RubyHackernews

get '/' do
  @entries = Entry.all
  erb :index
end