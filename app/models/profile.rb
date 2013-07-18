class Profile < Entity
  embedded_in :user
  
  field :first_name, type: String
  field :last_name, type: String
  field :address_1, type: String
  field :address_2, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  field :phone_number, type: String

end
