class Profile < Entity
  embedded_in :user
  
  CHAT_TYPES = ['AIM', 'Google Talk', 'Windows Live Messenger','Skype', 'Yahoo! Messenger',
               'Gadu-Gadu', 'ICQ','QQ','NateOn','Twitter', 'Hyves', 'Orkut',
               'Cyworld','QIP','Rediff Bol', 'Vkontakte','eBuddy','Mail.ru Agent',
               'Jabber','BlackBerry Messenger']
  
  field :first_name, type: String
  field :last_name, type: String
  field :address_1, type: String
  field :address_2, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  field :phone_number, type: String
  field :chat_type, type: String
  field :screen_name, type: String

end
