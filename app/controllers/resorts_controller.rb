class ResortsController < ApplicationController

  def show
    @resort = Resort.find_by_slug(params[:slug])
  end

end
