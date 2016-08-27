# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


images = Image.create!([
  {image_url: "https://hd.unsplash.com/photo-1469719847081-4757697d117a"},
  {image_url: "https://hd.unsplash.com/photo-1467521335787-2f0fc0f0e9a0"},
  {image_url: "https://hd.unsplash.com/photo-1466837838619-c8f5b8f0c166"},
  {image_url: "https://hd.unsplash.com/photo-1457365050282-c53d772ef8b2"},
  {image_url: "https://hd.unsplash.com/photo-1467321638755-7246fd0dc1f3"},
  {image_url: "https://hd.unsplash.com/photo-1465479423260-c4afc24172c6"},
  {image_url: "https://hd.unsplash.com/photo-1464695110811-dcf3903dc2f4"}
])


User.create!(
  name: "Shaghig",
  email: "shaghig@example.com",
  password: "password"
)

User.create!(
  name: "Guest",
  email: "guest@example.com",
  password: "password"
)
