class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :edit]
  def index
    @surf_companies = SurfCompany.all
    @bookings = Booking.all
  end
  def show
    @booking = Booking.find(params[:id])
  end
  def new
    @booking = Booking.new
    @surf_company = SurfCompany.find(params[:surf_company_id])
  end
  def create
    @booking = Booking.new(booking_params)
    @surf_company = SurfCompany.find(params[:surf_company_id])
    @booking.surf_company = @surf_company
    # Associate the user to the booking. Devise provides this current_user
    @booking.user = current_user
    if @booking.save
      redirect_to surf_companies_path(@surf_company)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to surf_company_url, notice: 'Your booking was successfully deleted'}
    end
  end

  def update
    @booking = Booking.find(params[:id])
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to bookings_path, notice: 'Your booking was successfully updated'}
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: unprocessable_entity }
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
