class Exercise
  include Mongoid::Document
  field :name, type: String
  field :start, type: Date
  field :end, type: Date
  embeds_many :units
  accepts_nested_attributes_for :units, :allow_destroy => true
end
