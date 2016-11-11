class User
  include Mongoid::Document

  # Campos
  field :_id, type: String
  field :_slugs, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :attached_provider, :type => Hash, :default => {}


end