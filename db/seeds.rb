# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside
# the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Fund.create([
              { name: 'Nishon',
                sport: 'Nishon',
                minbet: 500,
                description: 'This fund bets on the NBA',
                user_id: 4 },
              { name: 'James',
                sport: 'NBA',
                minbet: 500,
                description: 'This fund bets on the NBA',
                user_id: 1 }

            ])
