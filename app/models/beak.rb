class Beak
  include Mongoid::Document
  field :name, :type => String
  references_and_referenced_in_many :tentacles
  references_many :krakens
end
