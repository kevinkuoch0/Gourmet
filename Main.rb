require 'sinatra'
require 'mandrill'

api_key = ENV['MANDRILL_APIKEY']
m = Mandrill::API.new "#{api_key}"

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

get '/form' do
	@title = "Contact Us"
	erb :form
	
end



get '/about' do
	@title = "About"
	erb :about
	
end

post '/mail_page' do
	@title = "Contact Us"
	
	
	message = {
 # :subject=> params[:username],
 # :from_name=> "Your name",
 :from_name=> params[:username],
 :text=>params[:message_form],
 :to=>[{:email=> "jbergandino@gmail.com", :name=> "JohnNameTest"}],
 # :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
 # :from_email=>"jc@jasoncurran.com"
 :from_email=>params[:email]

}
sending = m.messages.send message
puts sending
erb :mail_page

end