json.extract! listing, :id, :profile_id, :hobby_id, :description, :location, :date, :city, :equipment, :capacity, :created_at, :updated_at
json.url listing_url(listing, format: :json)
