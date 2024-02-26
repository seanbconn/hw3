class PlacesController < ApplicationController

def index
  # Find all the places (index.html.erb in views)
  @places = Place.all
  # Render places in the index view
end
  
def show
  # Find a place (show.html.erb in views)
  @place = Place.find_by({"id" => params["id"]})
  @entries = Entry.where({"place_id" => @place["id"]})

  # @entry = Entry.where({"id" => params["company_id"]})
end

def new
  # Direct the user to a form to enter new information. This renders the new place form.
  @place = Place.new
end

def create

  # Start with a new place
  @place = Place.new

  # This assigns user-entered form data to the table of record, in our case places
  @place["name"] = params["place"]

  # This saves the new entry in the Place row
  @place.save

  # Then we need to redirect the user
  redirect_to "/places"
end



end

