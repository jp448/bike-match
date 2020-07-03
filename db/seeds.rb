require 'open-uri'
require 'faker'

Review.destroy_all
Booking.destroy_all
Bike.destroy_all
User.destroy_all

puts 'creating users...'
10.times do
  User.create(
    email: Faker::Internet.email(domain: 'example'),
    password: '123456'
  )
end

puts '10 users created'

puts 'creating 1 bike'
dutch_bike_photos = ['https://images.unsplash.com/photo-1591985038409-ac100aecc7e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1581879657705-b629ed37bef4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1587227922582-9991e4c0d2f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
bike = Bike.new(category: "Dutch", location: "Kreuzberg", price: rand(10..30), title: "City Rider", user: User.first, address: "Prinzessinnenstraße 21 10969 Berlin")
dutch_bike_photos.each do |pic_url|
  bike.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
bike.save

puts 'creating 1 bike'
ss_bike_photos = ['https://images.unsplash.com/photo-1566663589567-6a44aef25c52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1547079293-c44e9ee1eb7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1541788447669-6e6b2fb4700c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
bike = Bike.new(category: "Single Speed", location: "Mitte", price: rand(10..30), title: "Fixie", user: User.first, address: "Friedrichstraße 107 10117 Berlin")
ss_bike_photos.each do |pic_url|
  bike.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
bike.save

puts 'creating 1 bike'
racing_bike_photos =['https://images.unsplash.com/photo-1559348349-86f1f65817fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1558342697-9657a85f357b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1593308212116-ac7c545d3ba3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
bike = Bike.new(category: "Racing", location: "Pankow", price: rand(10..30), title: "Speed Machine", user: User.first, address: "Vinetastraße 10 13189 Berlin")
racing_bike_photos.each do |pic_url|
  bike.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
bike.save

puts 'creating 1 bike'
electric_bike_photos = ['https://images.unsplash.com/photo-1585160140761-b0733deab17d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1579119099178-c0e502392c6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1579117668079-bc683eb1c57c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
bike = Bike.new(category: "Electric", location: "Spandau", price: rand(10..30), title: "Green Go", user: User.last, address: "Moritzstraße 2, 13597 Berlin")
electric_bike_photos.each do |pic_url|
  bike.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
bike.save

puts 'creating 1 bike'
road_bike_photos = ['https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1542721087-33df3c17fff1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1531608139434-1912ae0713cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
bike = Bike.new(category: "Road", location: "Friedrichschain", price: rand(10..30), title: "Elx-28", user: User.last, address: "Kinzigstraße 48 10247 Berlin")
road_bike_photos.each do |pic_url|
  bike.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
bike.save

puts 'creating 1 bike'
moutain_bike_photos = ['https://images.unsplash.com/photo-1511994298241-608e28f14fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1565435043266-b6798f4342e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1553105659-d918b253f0f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
bike = Bike.new(category: "Moutain", location: "Charlottenburg", price: rand(10..30), title: "Climber", user: User.first, address: "Leonhardtstraße 3, 14057 Berlin")
moutain_bike_photos.each do |pic_url|
  bike.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
bike.save

puts '6 bikes created'

puts 'creating booking'

10.times do
  users = User.all
  user = users.sample
  bikes = Bike.all
  bike = bikes.sample
  Booking.create(
    start_date: Faker::Date.between(from: Date.today, to: 10.days.from_now),
    end_date: Faker::Date.between(from: 10.days.from_now, to: 30.days.from_now),
    total_price: rand(30..100),
    user: user,
    bike: bike
    )
end

puts 'created 10 booking'

puts 'creating 10 reviews'

Review.create(
  booking: Booking.all[0],
  rating: 4,
  content: "Was a great ride, really smooth"
)

Review.create(
  booking: Booking.all[1],
  rating: 3,
  content: "The booking process was easy, but I probably wouldn't book this type of bike again"
)

Review.create(
  booking: Booking.all[2],
  rating: 5,
  content: "Great service I would use this again when I return to Berlin!"
)

Review.create(
  booking: Booking.all[3],
  rating: 5,
  content: "So glad I did not use a different bike rental app- this was so easy and the bike was actually something I would own myself!"
)

Review.create(
  booking: Booking.all[4],
  rating: 5,
  content: "Was a very easy rental process and the bike was in great shape."
)

Review.create(
  booking: Booking.all[5],
  rating: 4,
  content: "Easy and simple would recommend BikeMatch to friends"
)

Review.create(
  booking: Booking.all[6],
  rating: 3,
  content: "The location to pick up this bike was a bit confusing, but the bike itself was just what I was looking for."
)

Review.create(
  booking: Booking.all[7],
  rating: 4,
  content: "I got a flat tire, but the owner came right away and helped out- great service!"
)

Review.create(
  booking: Booking.all[8],
  rating: 5,
  content: "I was concerned I was going to have to pay a ton of money to bring my own personal bike to Berlin, but this was even better than my bike and super easy to use!"
)

Review.create(
  booking: Booking.all[9],
  rating: 4,
  content: "Was super happy overall"
)

puts 'created 10 reviews'
