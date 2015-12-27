class ResortsController < ApplicationController

  def show
    @resort = Resort.find_by_name("copper-mountain")
  end

end
