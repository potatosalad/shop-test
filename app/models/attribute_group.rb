class AttributeGroup
  include Mongoid::Document
  field :name, :type => String
  references_and_referenced_in_many :attrs, :inverse_of => :attributes, :class_name => "Attribute"
  references_many :entities
end
