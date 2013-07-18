class Entity
  include Mongoid::Document
  include Mongoid::Timestamps 
  field :active, type: Boolean, default: true
end