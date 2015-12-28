class ResortsController < ApplicationController

  def show
    @weather = Weather.new(params[:slug])
    UserMailer.powder_alert(User.first).deliver_now 
  end

end
