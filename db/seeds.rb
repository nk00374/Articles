# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Deletes any existing records
Ranking.delete_all

#Repopulates the database
Ranking.create!(name:"Article 1",
			   rank: 0,
			   read: false)

Ranking.create!(name:"Article 2",
			   rank: 0,
			   read: false)

Ranking.create!(name:"Article 3",
			   rank: 0,
			   read: false)

Ranking.create!(name:"Article 4",
			   rank: 0,
			   read: false)

Ranking.create!(name:"Article 5",
			   rank: 0,
			   read: false)

