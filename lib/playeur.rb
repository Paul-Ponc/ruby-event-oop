class Playeur
attr_accessor :name, :life_point 

    def initialize(name)
        @name = name
        @life_point = 10
    end

    def show_stat
    puts "#{name} a #{life_point} points de vie !"
    end

    def compute_dammage
    return rand(1..6)
    end

    def attack(playeur)
        playeur.gets_dammage(compute_dammage)
    end

    def gets_dammage(attack)
    @life_point = @life_point - attack
        if (@life_point <= 0)
            puts "NOOOOON #{name} mange #{attack} DEGAT ,IL EST MOOOORT !!!"
        else
        puts "#{name} prend #{attack} dégats OUCH !"
        end
    end

    
end


