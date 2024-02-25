class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create

#    # Start with a new place
#    @entry = Entry.new

#    # This assigns user-entered form data to the table of record, in our case places
#    @entry["title"] = params["title"]
#    @entry["description"] = params["description"]
#    @entry["posted_on"] = params["posted_on"]

#   # Assign relationship between entry and place.
#    @entry["place_id"] = params["place_id"]
 
#    # This saves the new entry in the Place row
#    @entry.save
 
#    # Then we need to redirect the user
#    redirect_to "/places/#{@entry["company_id"]}"
#  end

end
