class User < ActiveRecord::Base
  attr_accessible :avatar_url, :email, :first_name, :last_name, :username
end
