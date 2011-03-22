class Attribute
  include Mongoid::Document
  field :name, :type => String
  referenced_in :type
  references_many :values
  references_many :attribute_groups do
    def self.extended(proxy)
      proxy.target.selector = { "attr_ids" => proxy.base['_id'] }
    end
  end
end
