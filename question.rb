class Question
   
    def initialize(player)
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @answer = @num1 + @num2
        @player = player
    end
    def ask?
        print "#{@player.name}: What does #{@num1} + #{@num2} equal? "
        answer_try = gets.chomp.to_i
        if @answer == answer_try
            return true
       else
           return false
       end
    end
end

