class Attachment
  include Mongoid::Document
  field :descript, type: String
  mount_uploader :doc, type: GridFs
end
