class LandmarksController < ApplicationController
  get '/landmarks/new' do 
    erb :'/landmarks/new'
  end 
  
  post '/landmarks' do 
    @landmark = Landmark.create(params[:landmark])
    
    redirect '/landmarks'
  end 
  
  get '/landmarks' do 
    @landmarks = Landmark.all 
    
    erb :'/landmarks/index'
  end 
  
  get '/landmarks/:id' do 
    @landmark = Landmark.find(params[:id])
  end 
end
