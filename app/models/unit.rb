class Unit
  include Mongoid::Document
  field :unit_name, type: String
  embeds_many :ctos
  accepts_nested_attributes_for :ctos, :allow_destroy => true
  embedded_in :exercise
end
