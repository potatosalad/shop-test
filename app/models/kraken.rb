# Entity = Kraken
class Kraken
  include Mongoid::Document
  field :name, :type => String
  referenced_in :beak
  after_initialize :summon

  def self.instantiate(attrs = nil)
    super(attrs).summon
  end

  def summon
    self.beak.tentacles.each do |tentacle|
      self.class_eval "field(#{tentacle.name.to_s.inspect}, :type => String)"
    end
    return self
  end
end
