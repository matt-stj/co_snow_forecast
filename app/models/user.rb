class User < ActiveRecord::Base
has_secure_password

has_many :favorites
has_many :resorts, through: :favorites

end
