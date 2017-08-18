require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require 'pry'


get '/' do
  "Hello, World"
end


# TODO - change to POST

get '/ring_data' do 
  ring_number = params[:number]
  ring_time   = params[:time]

  if ring_number.nil? || ring_time.nil?
    raise "Please supply a &number and &time paramerters to /ring_data"
  end

  if ring_number.to_i > 10 
    warn "Hey there were more than 10 rings!"
  end

  if ring_time.to_i > 360
    raise "No rings have a 6 minute or greater time"
  end

  erb "Happy go Fuck yourself"
end

