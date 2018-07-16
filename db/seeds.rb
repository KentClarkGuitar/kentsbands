# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Band.destroy_all

Band.create([
    {name: "The Rolling Stones", user: User.first},
    {name: "Red Hot Chili Peppers", user: User.first},
    {name: "The Doors", user: User.first}
])

Favorite.create([
    {user: User.first, band: Band.first},
    {user: User.first, band: Band.third},
    {user: User.second, band: Band.second}
])