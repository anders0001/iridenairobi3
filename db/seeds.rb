# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "First we got to clean this mess up..."

Booking.destroy_all
Motorcycle.destroy_all

puts "---------------------"
puts "Ok, everything destroyed here. Time to start building."


puts "Creating motorcycles..."
motorcycles_attributes = [
  {
    name: "Black Panther",
    motorcycle_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/dfh7sorai/image/upload/v1541367462/realiride/bike3.jpg",
  },
  {
    name: "Mathai",
    motorcycle_type: "Wego 110",
    description: "Engine size: 110cc / max speed 85 kph | Fuel usage: circa 250 KSh / 100 km | Automatic transition",
    price: 13,
    picture: "https://res.cloudinary.com/dfh7sorai/image/upload/v1541367460/realiride/bike4.jpg",
  },
  {
    name: "Gaddafi",
    motorcycle_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/dfh7sorai/image/upload/v1541367460/realiride/bike2.jpg",
  },
  {
    name: "Goodluck Jonathan",
    motorcycle_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/dfh7sorai/image/upload/v1541367460/realiride/bike1.jpg",
  },
  {
    name: "Kofi Annan",
    motorcycle_type: "Yamaha XT225",
    description: "Engine size: 225cc / max speed 120 kph | Fuel usage: circa 650 KSh / 100 km | Manual transition with 5 gears",
    price: 19,
    picture: "https://res.cloudinary.com/dfh7sorai/image/upload/v1541367460/realiride/bike1.jpg",
  }]

Motorcycle.create!(motorcycles_attributes)
puts "Motorcycles successfully created!"

puts "Creating Bookings..."


bookings_attributes = [
  {
    motorcycle_id: Motorcycle.first.id,
    start_date: Date.today+3,
    end_date: Date.today+7,
    status: "pending",
  },
  {
    motorcycle_id: Motorcycle.second.id,
    start_date: Date.today+6,
    end_date: Date.today+8,
    status: "pending",
  },
  {
    motorcycle_id: Motorcycle.third.id,
    start_date: Date.today+5,
    end_date: Date.today+9,
    status: "pending",
  },
  {
    motorcycle_id: Motorcycle.fourth.id,
    start_date: Date.today+13,
    end_date: Date.today+17,
    status: "pending",
  },
  {
    motorcycle_id: Motorcycle.fifth.id,
    start_date: Date.today+1,
    end_date: Date.today+3,
    status: "pending",
  }]

Booking.create!(bookings_attributes)
puts "Bookings successfully created! Time to keep working, son."
