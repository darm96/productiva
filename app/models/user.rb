class User
  include Mongoid::Document

  # Campos
  field :_id, :type => Hash
  field :_slugs, type: Array
  field :firstname, type: String
  field :lastname, type: String
  field :attached_provider, :type => Hash, :default => {}
  field :address, type: String
  field :authentication_token, type: String
  field :avatar, type: String
  field :city_id, :type => Hash
  filed :created_at, type: Date
  field :device_id, type: Array
  field :device_token, type: Array
  field :current_ranking, type: Integer
  field :custom_level, type: Integer
  field :document_nuber, type: String
  field :document_type, type: String
  field :education, type: String
  field :email, type: String
  field :encrypted_password, type: String
  field :gender, type: String
  field :last_sign_in_at, type: Integer
  field :mail_chimp, type: Boolean
  field :mission_gather_ids, type: Array
  field :mobile_notification_ids, type: Array
  field :neo4j_id, type: String
  field :non_favorite_category_ids, type: Array
  field :notification_ids, type: Array
  field :occupation, type: String
  field :work_study_address, type: String


  def user_find(_id)
  	if _id.exists
  		
  	end
  end

end