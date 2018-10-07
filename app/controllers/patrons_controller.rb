class PatronsController < ApplicationController

  def index
    @patrons = Patron.all
  end

  def create
    @patron = Patron.new(patron_params)

    @patron.save
    redirect_to @patron
  end

  def show
    @patron = Patron.find(params[:id])
  end

  def new
  end

  private
  def patron_params
    params.require(:patron).permit(:firstname, :lastname, :email, :address, :loaves)
  end
end
