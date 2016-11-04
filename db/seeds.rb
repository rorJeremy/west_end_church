# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create!(name: "Test Event 1", description: "THis is just a test guys...", phone_number: "972-780-7654", directions_url: "https://www.google.com/maps/place/915+San+Jacinto+St,+Dallas,+TX+75202/@32.781965,-96.8065507,17z", location: "West End Church", address: "915 San Jacinto St", city: "Dallas", state: "TX", zip_code: "75202", start_date: "2016-11-13", end_date: "2016-11-13", start_time: "2016-11-13 11:00:00", end_time: "2016-11-13 13:00:00")
Event.create!(name: "Test Event 2", description: "Like I said last time. THis is just a test guysssss...", phone_number: "972-780-7654", directions_url: "https://www.google.com/maps/place/915+San+Jacinto+St,+Dallas,+TX+75202/@32.781965,-96.8065507,17z", location: "West End Church", address: "915 San Jacinto St", city: "Dallas", state: "TX", zip_code: "75202", start_date: "2016-11-20", end_date: "2016-11-20", start_time: "2016-11-20 11:00:00", end_time: "2016-11-20 13:00:00")

# west_end_church_picture_local = File.open("../Desktop/west_end_church.jpg", 'rb').read
# Event.first.update_attributes!(image: west_end_church_picture_local)