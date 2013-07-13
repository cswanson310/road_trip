json.array!(@days) do |day|
  json.extract! day, 
  json.url day_url(day, format: :json)
end