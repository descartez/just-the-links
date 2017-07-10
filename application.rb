require 'sinatra'
require 'ruby-hackernews'
include RubyHackernews

get '/' do
  @hackernews_entries = Entry.all
  @reddit_entries = []
  erb :index
end