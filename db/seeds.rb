# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  [
    "Dog",
    "A 4 legs dog.",
    "dog-1.jpg",
    "10",
  ], [
    "Cat",
    "A two eyes cat.",
    "cat-1.jpg",
    "8.5",
  ], [
    "Pig",
    "A cute pig.",
    "pig-1.jpg",
    "20",
  ],
].each do |name, description, image, price|
  Product.create(
    name: name,
    description: description,
    image: image,
    price: price,
  )
end
