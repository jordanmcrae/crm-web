require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'
require 'faker'

$rolodex = Rolodex.new

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

post '/contacts' do
  new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(new_contact)
  redirect to('/')
end