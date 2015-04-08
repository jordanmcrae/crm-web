require 'sinatra'

get '/' do
  @crm_app_name = "My CRM"
  @time = Time.new.strftime('%H:%M:%S')
  erb :index
end

get '/contacts' do
  erb :contacts
end

get '/contacts/new' do
  erb :addcontact
end
