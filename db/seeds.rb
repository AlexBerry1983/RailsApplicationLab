# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.delete_all
Sponsorship.delete_all
Sponsor.delete_all
Team.delete_all


team1 = Team.create({
  name: "Bulls",
  city: "Chicago"
  })

team2 = Team.create({
  name: "Thunder",
  city: "Oklahoma"
  })



player1 = Player.create({
  name: 'Rodman',
  team: team1
  })

player2 = Player.create({
  name: 'Jordan',
  team: team1
  })

player3 = Player.create({
  name: "Adams",
  team: team2
  })


sponsor1 = Sponsor.create({name: "Nike"})

sponsor2 = Sponsor.create({name: "Cheesy Peas"})


sponsorship1 = Sponsorship.create({cost: 300_000, sponsor: sponsor1, players: player1})

sponsorship2 = Sponsorship.create({cost: 1_000_000, sponsor: sponsor2, players: player3})
