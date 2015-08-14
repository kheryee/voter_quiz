# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times {Voter.create}
10.times {Referendum.create}
100.times {Question.create(referendum_id: rand(9))}
1000.times {Vote.create(upvote: rand(1), question_id: rand(99), voter_id: rand(9))}
