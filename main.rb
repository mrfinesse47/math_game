require "./Question.rb"
require "./Player.rb"
require "./Game.rb"

game = Game.new
while game.turn? #runs as long as one player isnt dead
    game.score
end

game.score
