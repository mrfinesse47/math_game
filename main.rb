require "./Question.rb"
require "./Player.rb"
require "./Game.rb"

# player1 = Player.new
# player2 = Player.new
# question = Question.new(player1.num)
# question.ask?

game = Game.new
while game.turn?
    game.score
end
game.score
