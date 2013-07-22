class Profile < Entity
  embedded_in :user
  cattr_accessor :messager_types, :contact_methods
  
  @@messager_types = [['',0],['AIM',1],['Google Talk',2], ['Windows Live Messenger',3],['Skype',4], ['Yahoo! Messenger',5],
               ['Gadu-Gadu',6], ['ICQ',7],['QQ',8],['NateOn',9],['Twitter',10], ['Hyves',11], ['Orkut',12],
               ['Cyworld',13],['QIP',14],['Rediff Bol',15], ['Vkontakte',16],['eBuddy',17],['Mail.ru Agent',18],
               ['Jabber',19],['BlackBerry Messenger',20]]
  @@contact_methods = [:sms, :email, :phone, :messager]
  
  field :first_name, type: String
  field :last_name, type: String
  field :address_1, type: String
  field :address_2, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  field :phone_number, type: String
  # messenger should be an array of key values of messenger type to screename and a mapping for preferred screename
  # exampe entry should be {:aim => 'my_aim_screename, :preferred => true}
  field :messenger, type: Array
  field :preffered_contact_method, type: String

end
