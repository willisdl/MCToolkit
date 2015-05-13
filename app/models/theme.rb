class Theme
  include Mongoid::Document
  field :name, type: String
  field :notes, type: String
  embedded_in :exercise
end
