class PlacesController < ApplicationController

def index
  # Find all the places (index.html.erb in views)
  @places = Place.all
  # Render places in the index view
end
  
def show
  # Find a place (show.html.erb in views)
  @place = Place.find_by({"id" => params["id"]})
end


