class User < ActiveRecord::Base
  has_one :shopping_cart
  has_secure_password

end
