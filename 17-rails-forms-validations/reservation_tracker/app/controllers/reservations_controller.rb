class ReservationsController < ApplicationController
  before_action :find_reservation, only: [:show, :edit, :update, :destroy]

	def index
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def edit
  end

  def create
    @reservation = Reservation.new(reservation_params)
    
    if @reservation.save
      redirect_to @reservation.customer
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :party_size, :customer_id, :restaurant_id)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
