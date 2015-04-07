# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.create([
  { name: "Sparky", description: "Large hound dog", age: 5, breed: "Hound", chip_number: "47392897", user_id: 3 },
  { name: "Fluffy", description: "Small poodle", age: 5, breed: "Poodle", chip_number: "32047230", user_id: 3 },
  { name: "Whiskers", description: "Cute calico cat", age: 5, breed: "Calico", chip_number: "345345", user_id: 4 },
])
#
User.create([
  { username: 'Person1', firstname: "Sparky", lastname: "Gronaldo", address: "237 S. PetOwner Dr", phone: "47392897", email: 'person1@personmail.com', password:'password' },
  { username: 'Person2', firstname: "Fluffy", lastname: "Iglesias", address: "247 W. PetOwner Ave", phone: "30283492", email: 'person2@personmail.com' },
])
