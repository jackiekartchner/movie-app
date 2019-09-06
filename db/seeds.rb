# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Actor.create(first_name: "Chris", last_name:  "Evans", known_for: "Captian America", age: 38)
Actor.create(first_name: "Tom", last_name:  "Holland", known_for: "Spiderman", age: 23)
Actor.create(first_name: "Johnny", last_name:  "Depp", known_for: "Captian Jack Sparrow", age: 56)

Movie.create(title: "The Lion King", year: 2019, plot: "A young lion returns from exile in adulthood, ready to reclaim the throne that was stolen from him and his father by his treacherous uncle.")
Movie.create(title: "Beauty and the Beast", year: 2017, plot: "As punishment for his actions, a young prince is transformed into a monstrous beast by a mysterious enchantress. Only condition is if he can learn to love someone and earn their love in return, then the spell will be broken.")
Movie.create(title: "Aladdin", year: 2019, plot: "A kind-hearted street urchin Aladdin vies for the love of the beautiful princess Jasmine, the princess of Agrabah. When he finds a magic lamp, he uses a genie's magic power to make himself a prince in hopes of marrying princess Jasmine.")
