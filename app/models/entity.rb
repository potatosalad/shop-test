class Entity
  include Mongoid::Document
  field :name, :type => String
  referenced_in :attribute_group
  references_many :values

  def to_dump
    out = [ "#{self.name} <#{self.class.name}> = {" ]
    for v in self.values
      out << "\t#{v.attribute.name} <#{v.attribute.type.name}> = #{v.value.inspect},"
    end
    out << "}"
    out.join("\n")
  end
end
