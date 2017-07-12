require 'sinatra'
require 'ruby-hackernews'
require 'shotgun'
include RubyHackernews

get '/' do
  @header = "Main"
  @hackernews_entries = Entry.all
  erb :index
end

get '/page/:page' do
  @header = "Main"
  @hackernews_entries = Entry.all(params['page'].to_i)
  erb :index
end

get '/newest' do
  @header = "Newest"
  @hackernews_entries = Entry.newest
  erb :index
end

get '/jobs' do
  @header = "Jobs"
  @job_entries = Entry.jobs
  erb :jobs
end

get '/about' do
  @header = "About"
  erb :about
end