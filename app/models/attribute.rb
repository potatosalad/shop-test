class Attribute
  include Mongoid::Document
  field :name, :type => String
  referenced_in :type
  references_many :values
end
