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

def new
  # Direct the user to a form to enter new information. This renders the new place form.
end

def create
  # Start with a new place
  @place = Company.new
  # This assigns user-entered form data to the table of record, in our case places
  @place = ["place"] = params["place"]
  # This saves the new entry in the Place row
  @place.save
  # Then we need to redirect the user
  redirect_to "/places"
end

