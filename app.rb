require 'sinatra/base'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/index' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks'
  end

  run! if app_file == $0
end 