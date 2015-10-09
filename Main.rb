require 'sinatra'

get '/' do
	@title = "Gardino's Gourmet Soup and Sandwiches"
	erb :index
	
end

get '/menu' do
	@title = "Menu"
	erb :menu
	
end

get '/location' do
	@title = "Location"
	erb :location
	
end

get '/staff' do
	@title = "Staff"
	erb :staff
	
end

get '/about' do
	@title = "About"
	erb :about
	
end
