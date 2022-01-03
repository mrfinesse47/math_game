class Question
   
    def initialize(player)
        @num1 = 1 #should be random
        @num2 = 2 #should be random
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

