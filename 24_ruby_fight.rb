# The Company has two directors who are passionately disagreeing, they want to fight it out.
# Being the fantastic human you are, you propose creating a virtual fight to minimise physical harm.
# You need to create a simple fighting game, where two opponents will fight until one of them loses.

# Hints: start by creating a Player class (the instance variables could be name, health and power).
# You’ll need a few methods, consider one that keeps track of whether a player is alive, another one that
# calculates the impact of hits (decreases the opponents heath by the the amount of the other players power).
# And a third that outputs the players information.

# You’ll then need to make a fight method that uses a loop to make the players hit one another until
# the is alive method returns false for one of them. When the loop is finished (which would mean one
# of the players has lost), show the players output.

# Then create two Player objects (create a random value for each player’s health and power, make is so that
# the maximum health value for a player is 200, and the maximum power value is 25) and call the fight method.

# class PlayerOne
#   def initialize
#     @health = 200
#     @name = "Fred"
#     @power = 20
#   end
# end
#
# class PlayerTwo
#   def initialize
#     @health = 200
#     @name = "Johnny"
#     @power = 30
#   end
# end
#
# # def fight
#
# # one = PlayerOne.new
# # two = PlayerTwo.new
#
#   # p_one_attack = PlayerOne.power
#   # p_two_attack = PlayerTwo.power
#   # p_one_health = PlayerOne.health
#   # p_two_health = PlayerTwo.health
#
#   p_one_attack = 10
#   p_two_attack = 20
#   p_one_health = 200
#   p_two_health = 200
#
#
#   until p_one_health == 0 || p_two_health == 0
#       p_one_health -= p_one_attack
#       p_two_health -= p_two_attack
#     puts "Player One did a #{p_one_attack} strength attack! \nPlayer Two did a #{p_two_attack} strength attack!"
#   end
#
#    if p_one_health == 0
#      puts "p1 wins"
#    else
#      puts "p2 wins "
#    end

# end

class Players
    attr_accessor :name, :hp, :damage
    def initialize(name, hp, damage)
        @name = name
        @hp = hp
        @damage = damage
    end

    def attack(opposite_player)
        until self.hp < 1 || opposite_player.hp < 1
          puts "#{self.name} attacks #{opposite_player.name}!"
          self.hp -= rand(@damage)
          puts "#{opposite_player.name}'s hp: #{opposite_player.hp}"

          puts "#{opposite_player.name} attacks #{self.name}!"
          opposite_player.hp -= rand(@damage)
          puts "#{self.name}'s hp: #{self.hp}"
          if self.hp <= 0
             puts "#{self.name} wins"
           elsif opposite_player.hp <= 0
             puts "#{opposite_player.name} wins"
           else
             "Next Round!"
          end
        end
    end
end

class Player1 < Players
end

class Player2 < Players
end

jerry = Player1.new("Jerry", 200, 30)
billy = Player2.new("Billy", 200, 30)

jerry.attack billy
billy.attack jerry
