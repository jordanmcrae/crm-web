require_relative 'contact'
require 'sinatra'
require 'faker'

get '/' do
  @crm_app_name = "My CRM"
  @time = Time.new.strftime('%H:%M:%S')
  erb :index
end

get '/contacts' do
  @contacts = []
  @contacts << Contact.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::Hacker.say_something_smart)
  @contacts << Contact.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::Hacker.say_something_smart)
  @contacts << Contact.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::Hacker.say_something_smart)

  erb :contacts
end

get '/contacts/new' do
  erb :addcontact
end
