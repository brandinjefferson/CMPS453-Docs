# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Request.create(clid: "abc1234",
                building: "Harris Hall",
                room: "360E",
                gender: "female",
                activated_at: Time.zone.now,
                activated: false)

30.times do |n|
  clid = Faker::Lorem.characters(3) + Faker::Number.number(4)
  gender = "male"
  room = Faker::Number.number(3)
  Request.create(clid: clid,
                building: "Harris Hall",
                room: room,
                gender: gender,
                activated_at: Time.zone.now,
                activated: false)
end

Administrator.create(username: "kingofthehill",
                      password: "password",
                      password_confirmation: "password")
