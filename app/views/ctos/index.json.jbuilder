json.array!(@ctos) do |cto|
  json.extract! cto, :id, :cto
  json.url cto_url(cto, format: :json)
end
