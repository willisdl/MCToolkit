json.array!(@events) do |event|
  json.id event.id
  json.extract! event, :title, :description, :start, :end
  json.url event_url(event, format: :html)
end
