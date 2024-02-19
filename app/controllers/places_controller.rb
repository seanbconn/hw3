class PlacesController < ApplicationController

def index
  # Find all the places
  @places = Place.all
  # Render places in the index view
end
  
def show
  # Find a place
  @places = Place.find_by({"id" => params["id"]})
end
