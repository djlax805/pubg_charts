## Application gems
require 'json'
require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

## Debugging gems
require 'pry'

## Models
require './models/ring.rb'

## Routes
get '/ring_data' do
  erb :index
end

post '/ring_data' do 
  ring_number  = params[:number]
  ring_time    = params[:time]
  ring_players = params[:players]

  if ring_number.nil? || ring_time.nil? || ring_players.nil?
    raise "Please supply a &players, &number and &time paramerters to /ring_data"
  end

  if ring_number.to_i > 10 
    warn "Hey there were more than 10 rings!"
  end

  if ring_time.to_i > 360
    raise "No rings have a 6 minute or greater time"
  end

  if ring_players.to_i > 100 
    raise "There cannot be more than 100 players!"
  end

  r = Ring.create! number: ring_number,
               time: ring_time,
               players: ring_players

  r.to_json             
end

