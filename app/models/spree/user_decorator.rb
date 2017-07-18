Spree.user_class.class_eval do
  has_many :api_user_authentications, dependent: :destroy
end