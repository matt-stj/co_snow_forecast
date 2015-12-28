class User < ActiveRecord::Base

has_many :favorites
has_many :resorts, through: :favorites

end
