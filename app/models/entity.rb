class Entity
  include Mongoid::Document
  field :name, :type => String
  references_many :values
end
