json.array!(@venues) do |venue|
  json.extract! venue, :id, :place, :location
  json.url venue_url(venue, format: :json)
end
