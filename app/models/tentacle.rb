class Tentacle
  include Mongoid::Document
  field :name, :type => String
  referenced_in :sucker
  references_many :beaks do
    def self.extended(proxy)
      proxy.target.selector = { "tentacle_ids" => proxy.base['_id'] }
    end
  end
end
