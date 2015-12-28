require_relative '../services/forecast_io_service'

class Resort < ActiveRecord::Base
  before_create :set_slug
  has_many :favorites
  has_many :users, through: :favorites

  def to_param
    slug
  end

  def set_slug
    self.slug = name.parameterize
  end

end
