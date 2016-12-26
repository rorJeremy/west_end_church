json.array!(@events) do |event|
  json.id event.id
	json.created_at event.created_at
	json.updated_at event.updated_at
	json.name event.name
	json.description event.description
	json.image event.image
	json.phone_number event.phone_number
	json.directions_url event.directions_url
	json.location event.location
	json.address event.address
	json.city event.city
	json.state event.state
	json.zip_code event.zip_code
	json.end_date event.end_date
	json.start_date event.start_date
	json.end_time event.end_time
	json.start_time event.start_time
end