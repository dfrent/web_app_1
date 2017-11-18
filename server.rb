require 'sinatra'

get '/home' do #navigates to home page
  erb :index
end

get '/portfolio' do #navigates to portfolio/gallery
 erb :gallery
end
