class Value
  include Mongoid::Document
  field :value, :type => String
  referenced_in :attribute
  referenced_in :entity
end
