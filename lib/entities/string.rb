module Intrigue
module Entity
class String < Intrigue::Model::Entity

  def self.metadata
    {
      :name => "String",
      :description => "A Generic Search String",
      :user_creatable => true,
      :example => "Literally any @#$%$!!$^'n old thing!"
    }
  end

  def validate_entity
    name =~ /^\w.*$/
  end

  def enrichment_tasks
    ["enrich/string"]
  end

  def scoped?
    return true if self.seed
    return false if self.hidden
  true # otherwise just default to true
  end


end
end
end
