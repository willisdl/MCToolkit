class Observation
  include Mongoid::Document
  field :dtg, type: Time
  field :oct, type: String
  field :obs, type: String
  field :recommend, type: String
  field :aar_ques, type: String
  field :unit, type: String
  field :theme, type: String
  embeds_many :attachments
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  embedded_in :exercise
end
