json.array!(@events) do |event|
  json.extract! event, :title, :description, :start, :end
  json.id event.id
  json.url event_url(event, format: :html)
end
