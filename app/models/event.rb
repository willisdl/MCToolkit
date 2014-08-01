class Event
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :start, type: Time
  field :end, type: Time
end
