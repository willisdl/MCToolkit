json.array!(@events) do |event|
  json.id event.id
  json.extract! event, :title, :description, :start, :end, :allDay, :event_type
  json.url event_url(event, format: :html)
end
