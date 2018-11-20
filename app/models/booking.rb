class Booking < ApplicationRecord
  belongs_to :motorcycle

	def number_of_days
	  date_days = Booking.end_date - Booking.start_date  
	  days = date_days.to_f
	end

	def final_price
	  Booking.final_price = Motorcycle.price * number_of_days
	end
end



# #PSEUDO CODE FOR PRICE CALCULATION
# booking_days = booking.end_date - booking.start_date
# if booking_days <= 10
#   motorcycle.price = booking_days * 15
# elsif booking_days >= 10 && booking_days < 15 
#   motorcycle.price = booking_days * 10
# else
#   motorcycle.price = booking_days * 5
# end
