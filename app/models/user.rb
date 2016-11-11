class User
  include Mongoid::Document
  field :_id, type: String
  field :_slugs, type: String
end
