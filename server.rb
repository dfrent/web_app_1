require 'sinatra'

get '/home' do #navigates to home page
  erb :index
end

get '/portfolio' do #navigates to portfolio/gallery
 erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favorites' do
  @fav_links = {'Netflix' => 'https://www.netflix.com/ca/', 'Google' => 'https://www.google.ca/?gfe_rd=cr&dcr=0&ei=AqUQWoLfOqfU8gfm24pA', 'Space Jam' => 'https://www.warnerbros.com/archive/spacejam/movie/jam.htm', 'IMDB' => 'http://www.imdb.com/?ref_=nv_home', 'Ruby Docs' => 'http://ruby-doc.org/'}
  erb :favorites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end
