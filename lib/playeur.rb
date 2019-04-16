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

class HumanPlayeur
    attr_accessor :name, :life_point, :weapon_lvl
    
        def initialize(name)
            @life_point = 100
            @name = name
            @weapon_lvl = 1
        end
    
        def show_stat
            puts "#{name}, a #{life_point} point de vie et une arme de niveau #{weapon_lvl}"
        end
    
        def compute_dammage
           return rand(1..6) * @weapon_lvl
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
    
        def search_weapon
            new_weapon = rand(1..6)
            puts "you find a Weapon lvl#{new_weapon}!!"
            if (new_weapon <= @weapon_lvl)
                @weapon_lvl = @weapon_lvl
                puts "Ahah your new weapon suck !! keep your old gun !!!"
            else  @weapon_lvl = new_weapon
                puts "OMG you take INCREDIBLE weapon lvl#{@weapon_lvl}"
            end
        end
    
        def search_heal_pack
            dice = rand(1..6)
            case dice
            when 1
                puts "you find nothing #{name}"
            when 2..5
                @life_point += 50
                if (@life_point < 100)
                    @life_point = 100
                end
                puts "NICE you find heal package ! you win 50 life"
            when 6
                @life_point += 80
                if (@life_point < 100)
                    @life_point = 100
                end
                puts "NICE you find heal package ! you win 80 life"
            end
        end
    end

