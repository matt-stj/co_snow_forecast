class Resort < ActiveRecord::Base
  before_create

  def to_param
    slug
  end

  def set_slug
    self.slug = name.parameterize
  end

end
