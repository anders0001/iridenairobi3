class Motorcycle < ApplicationRecord
  has_many :bookings

  # #PSEUDO CODE FOR PRICE CALCULATION
  # booking_days = booking.end_date - booking.start_date

  # if booking_days <= 10
  #   motorcycle.price = booking_days * 15
  # elsif booking_days >= 10 && booking_days < 15 
  #   motorcycle.price = booking_days * 10
  # else
  #   motorcycle.price = booking_days * 5
  # end

end
