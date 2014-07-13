class Cto
  include Mongoid::Document
  field :cto, type: String
  embedded_in :unit
end
