require 'sinatra'
require 'ruby-hackernews'
include RubyHackernews

get '/' do
  @entries = Entry.all
  @entries.each do |e|
    puts "#{e.link.title}"
  end

  erb :index
end