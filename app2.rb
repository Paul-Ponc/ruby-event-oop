require 'bundler'
require 'io/console'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/playeur'

player1 = Playeur.new("lopez")
player2 = Playeur.new("Slut")
 
human = HumanPlayeur.new(playeur)
  
while human.life_point >0 && (player1.life_point > 0 || player2.life_point >0)
    puts human.show_stat
    print "qu'elle action veut tu effectuer ?\n
            a - chercher une meilleure arme    \n
            s - chercher à se soigner

            attaquer un joueur en vue :   \n"
    print"0 -" ;puts  player1.show_stat
    print"1 -" ;puts  player2.show_stat
 
    input = gets.chomp
    
    case input
        when "a"                                ##le probleme vien du gets qui se trouve dans une boucle, je dois mettre cette partie dans une méthodes mais j'ai la flemme
            human.search_weapon
            puts "l'ennemie va te taper"
            player1.attack(human)
            break
        when 's'
            human.search_heal_pack
            puts "l'ennemie va te taper"
            player1.attack(human)
            break
        when '0'
            human.attack(player1)
            puts "l'ennemie va te taper"
            player1.attack(human)
            break
        when '1'
            human.attack(player2)
            puts "l'ennemie va te taper"
            player2.attack(human)
            break
        end
end
