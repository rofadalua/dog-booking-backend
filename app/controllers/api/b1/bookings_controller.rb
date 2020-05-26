class Api::B1::BookingsController < ApplicationController
     
    def index
        @bookings = Booking.all 
        render json: @bookings
    end

    def create
        @booking = Booking.new(booking_params)
         @booking.user_id = params[:user_id]
         @user = User.find_by(id: params[:user_id])
        if @booking.save 
            render json: @user
        else 
            render json: {error: "Please fill all the line"}
        end
    end

    def show 
        @booking = Booking.find(params[:id])
        render json: @booking
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
    end

    private

    def booking_params
        params.require(:booking).permit(:pet_name, :phone_number, :email, :date, :description)
    end

end
