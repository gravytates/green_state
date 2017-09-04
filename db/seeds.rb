# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

# admin = FactoryGirl.create(:admin_user)
# User.create!(name: "Grady", admin: true, email: "adming@adming", password: "123456", state: 'Oregon' )
users = []
100.times do |index|
  users.push(FactoryGirl.create(:oregon_user))
end

100.times do |index|
  users.push(FactoryGirl.create(:washington_user))
end

users.each do |user|
  estimate = FactoryGirl.create(:co2_estimate)
  user.co2_estimates.push(estimate)
end
