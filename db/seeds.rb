# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'ROLES'
roles=Role.create([{name: "admin"},{name: "author"},{name: "user"}])
users=User.create([{id: "1",email: "vijay@gmail.com",password:  "vijayyadav",name: "Vijay Singh",role_ids: [1]},
  {id: "2",email: "deepak@gmail.com",password:  "deepak123",name: "Deepak",role_ids: [2]},
  {id: "3",email: "vivek@gmail.com",password:  "vivek123",name: "Vivek Kumar",role_ids: [3]},
  {id: "4",email: "abhishek@gmail.com",password:  "abhishek123",name: "Abhishek",role_ids: [3]}])

