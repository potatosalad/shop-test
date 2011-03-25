# Type = Sucker
class Sucker
  include Mongoid::Document
  field :name, :type => String
  references_many :tentacles
end
