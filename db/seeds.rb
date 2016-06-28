# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |i|
  name = Faker::Name.name
  email = Faker::Internet.email
  password = "123456"

  user= User.create(name: name, email: email, password: password, password_confirmation: password)
  20.times do
    title = Faker::Lorem.sentence
    content = Faker::Lorem.paragraph
    user.comments.create(title: title, content: content)
  end
end
