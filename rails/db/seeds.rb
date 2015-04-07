# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.create([
  { name: "Sparky", description: "Large hound dog", age: "5 years old", breed: "Hound", chip_number: "47392897" },
  { name: "Fluffy", description: "Small poodle", age: "2 years old", breed: "Poodle", chip_number: "32047230" },
  { name: "Whiskers", description: "Cute calico cat", age: "4 years old", breed: "Calico", chip_number: "345345" },
])

User.create([
  { firstname: "Sparky", lastname: "Gronaldo", address: "237 S. PetOwner Dr", phone: "47392897" },
  { firstname: "Fluffy", lastname: "Iglesias", address: "247 W. PetOwner Ave", phone: "30283492" },
])
