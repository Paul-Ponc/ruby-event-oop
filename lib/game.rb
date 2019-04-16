def playeur
    puts"     ------------------------------------
        |        Welcome young-beast        |
        |  you have to defeat 2 gladiators  |
        -------------------------------------"
    
    puts "      enter your pseudo !"
    pseudo = STDIN.noecho(&:gets).chomp
    puts "      welcome #{pseudo}"
    puts "------------BATTLE BEGIN------------"
    return pseudo
end