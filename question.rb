# Player 1: What does 5 plus 3 equal?

class Question
    @answer_try
    def initialize(player)
        @num1 = 1
        @num2 = 2
        @answer = @num1 + @num2
        @player = player
        puts "hello"
    end
    def ask
        print "Player 1: What does #{num1} + #{num2} equal?"
        @answer_try = gets.chomp
        if @answer == @answer_try
            puts "correct"
        end
    end
end

