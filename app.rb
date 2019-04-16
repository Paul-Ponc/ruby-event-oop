# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/game'
require_relative 'lib/playeur'

playeur1 = Playeur.new("lopez")
playeur2 = Playeur.new("Slut")

puts "Voici l'état de nos joueurs !!!"
puts "    -------------------"
print playeur1.show_stat
print playeur2.show_stat 
puts "-----------------------------"
puts " "
puts "QUE LE COMBAT COMMENCE !!!!"
puts" "
while playeur1.life_point > 0 || playeur2.life_point > 0
    playeur1.attack(playeur2)
    if (playeur2.life_point <= 0 ) 
        puts "lol"
        break
    end
    playeur2.attack(playeur1)
    if (playeur1.life_point <= 0 ) 
        puts "lol"
        break
    end
    puts ""
    puts playeur2.show_stat , playeur1.show_stat
     
end