json.array!(@analysts) do |analyst|
  json.extract! analyst, :id
  json.url analyst_url(analyst, format: :json)
end
