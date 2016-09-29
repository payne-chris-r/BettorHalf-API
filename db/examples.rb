# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
Fund.create([
              { name: 'NBA Ballers',
                sport: 'NBA',
                minbet: 500,
                description: 'This fund bets on the NBA',
                user_id: 1 },
              { name: 'Drive for show ',
                sport: 'Golf',
                minbet: 1000,
                description: 'This fund bets on Golf',
                user_id: 1 },
              { name: 'Hardcourt sliders',
                sport: 'Tennis',
                minbet: 300,
                description: 'This fund bets on the Tennis',
                user_id: 1 },
              { name: 'Big Hitters',
                sport: 'NHL',
                minbet: 2000,
                description: 'This fund bets on NHL',
                user_id: 1 }

            ])
