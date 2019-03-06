require_relative 'player' #Allows to import other .rb files
require_relative 'team' #If required, you can also reference to other folder

player1 = Player.new("Jim", 13, 5); player2 = Player.new("Kim", 14, 5)
player3 = Player.new("Jon", 21, 4.5); player4 = Player.new("Moe", 18, 5)
player5 = Player.new("Joe", 34, 5)

red_team = Team.new("Red")
red_team.add_players(player1, player2, player3, player4, player5) #Splat again

puts red_team.to_s

#Select players between 14 and 20 and reject any players with a skill lower than 4.5
elig_players = red_team.select {|player| (14..20) === player.age } #This is possible because Team class includes Enumerable module
                        .reject {|player| player.skill_level < 4.5}

puts elig_players

