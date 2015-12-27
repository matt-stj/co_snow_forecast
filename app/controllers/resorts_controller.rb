class ResortsController < ApplicationController

  def show
    @weather = Weather.new(params[:slug])
  end

end
