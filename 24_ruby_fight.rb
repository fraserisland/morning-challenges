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




class Players

    attr_accessor :name, :hp, :damage
    def initialize(name, hp, damage)
        @name = name
        @hp = hp
        @damage = damage
    end

    def attack(opposite_player)
        until self.hp < 1 || opposite_player.hp < 1
          system("clear")
          puts "THIS IS THE BATTLE TO THE DEATH LEZ GO!!"
          x = rand(@damage)
          puts "#{self.name} attacks #{opposite_player.name} with #{x}!"
          self.hp -= x

          y = rand(@damage)
          puts "#{opposite_player.name} attacks #{self.name} with #{y}!"
          opposite_player.hp -= y

          puts "#{self.name}'s hp: #{self.hp} | #{opposite_player.name}'s hp: #{opposite_player.hp}"
          if self.hp <= 0
             puts "#{(opposite_player.name).upcase} WINS!!!!!!"
           elsif opposite_player.hp <= 0
             puts "#{(self.name).upcase} WINS!!!!!!"
           else
             "Next Round!"
          end
sleep 0.5
        end
    end
end

class Player1 < Players
end

class Player2 < Players
end

jerry = Player1.new("Jerry", 200, 30)
billy = Player2.new("Billy", 200, 30)

jerry.attack(billy)
billy.attack(jerry)
