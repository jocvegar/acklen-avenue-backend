# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  candidates = Candidate.create(
  	[
  		{ first_name: 'Name1', last_name: "Last1", email: "test1@example.com", status: "review" },
  		{ first_name: 'Name2', last_name: "Last2", email: "test2@example.com", status: "pass" },
  		{ first_name: 'Name3', last_name: "Last3", email: "test3@example.com", status: "review" },
  		{ first_name: 'Name4', last_name: "Last4", email: "test4@example.com", status: "declined" },
  	]
  )
