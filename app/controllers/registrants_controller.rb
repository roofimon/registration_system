class RegistrantsController < ApplicationController
  def new
    @registrant = Registrant.new
  end

  def create
    @registrant = Registrant.new(params[:registrant])
    if @registrant.save

    else
      render 'new'
    end
  end
end
