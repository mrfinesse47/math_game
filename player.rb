class Player
    @@num_of_players = 0
    def initialize
        @@num_of_players+=1
        @num = @@num_of_players
        @lives = 3
        @name = "player#{@num}"
    end
    def num
        @num
    end
    def kill
        @lives-=1
    end
    def dead?
        if @lives <= 0
            return true
        else
            return false
        end
    end
    def name
        @name
    end

    def lives
        @lives
    end

end