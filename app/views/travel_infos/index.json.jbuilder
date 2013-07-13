json.array!(@travel_infos) do |travel_info|
  json.extract! travel_info, 
  json.url travel_info_url(travel_info, format: :json)
end