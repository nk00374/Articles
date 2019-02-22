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
Ranking.create(name:"Article1",
			   rank: 0,
			   read: false)

Ranking.create(name:"Article2",
			   rank: 0,
			   read: false)

Ranking.create(name:"Article3",
			   rank: 0,
			   read: false)

Ranking.create(name:"Article4",
			   rank: 0,
			   read: false)

Ranking.create(name:"Article5",
			   rank: 0,
			   read: false)

