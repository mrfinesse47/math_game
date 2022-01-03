class Game
    def initialize
        @player1 = Player.new
        @player2 = Player.new
        @whos_turn = @player1
    end

    def turn?
        puts "----- NEW TURN -----"
        question = Question.new(whos_turn)
        if(!question.ask?)
            whos_turn.kill
            puts "#{whos_turn.name}: Seriously! No"
        else
            puts "#{whos_turn.name}: Yes you are correct"
        end

        if whos_turn.dead?
            return false
        end

        change_turn

        return true
    end

    def score
        if !game_over?
        puts "P1 #{@player1.lives}/3 vs P2 #{@player2.lives}/3\n"
        else
            puts "----- GAME OVER -----\n"
            puts "#{winner.name} wins with a score of #{winner.lives}/3"
        end
    end

    private

    def change_turn
        if(whos_turn == @player1)
            @whos_turn = @player2
        else
            @whos_turn = @player1
        end
    end

    def game_over?
        if @player1.lives == 0 || @player2.lives == 0
            return true
        end
        return false
    end

    def winner
        if @player1.lives == 0 
            return @player2
        end
        if @player2.lives == 0
            return @player1
        end
    end

    def whos_turn
        @whos_turn
    end
end