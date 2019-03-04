class LandmarksController < ApplicationController
  get '/landmarks/new' do 
    binding.pry
    erb :'/landmarks/new'
  end 
end
