# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.create([
  { name: "Sparky", description: "Large hound dog", age: 5, breed: "BloodHound", chip_number: "47392897", user_id: 3, picture: "http://static1.vetknowledge.com/sites/default/files/styles/large/public/images/article/bloodhound-grass.jpg?itok=thDIFpVe" },
  { name: "Fluffy", description: "Small poodle", age: 5, breed: "Poodle", chip_number: "32047230", user_id: 3, picture: "http://cdn-www.dailypuppy.com/dog-images/ralphy-the-miniature-poodle-1_68874_2012-11-22_w450.jpg" },
  { name: "Grumpy cat!", description: "Famous grumpy cat", age: 5, breed: "Snowshoe Siamese", chip_number: "345345", user_id: 4, picture: "http://i.kinja-img.com/gawker-media/image/upload/s--XxeU3pwd--/efg4piwisx1tcco4byit.png" },
])
#
User.create([
  { username: 'Person1', firstname: "Sparky", lastname: "Gronaldo", address: "237 S. PetOwner Dr", phone: "47392897", email: 'person1@personmail.com', password:'password' },
  { username: 'Person2', firstname: "Fluffy", lastname: "Iglesias", address: "247 W. PetOwner Ave", phone: "30283492", email: 'person2@personmail.com' },
])

Message.create([ to: "6024890731", body: "I found your pet!", from: "4802073339" ])
