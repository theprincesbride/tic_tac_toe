require 'pry-byebug'
gameboard = [

['-', '-', '-'],
['-', '-', '-'],
['-', '-', '-'],

]
gameboard_positions_sample = [

['1', '2', '3'],
['4', '5', '6'],
['7', '8', '9'],

]

board_position1 = gameboard[0][0]
board_position2 = gameboard[0][1]
board_position3 = gameboard[0][2]
board_position4 = gameboard[1][0]
board_position5 = gameboard[1][1]
board_position6 = gameboard[1][2]
board_position7 = gameboard[2][0]
board_position8 = gameboard[2][1]
board_position9 = gameboard[2][2]





binding.pry
class Player
    attr_accessor :name, :board_marker
    def initialize(name, player_number, board_marker)
        @name = name
        @player_number = player_number
        @board_marker = board_marker
    end




    ##turn


end

player1 = Player.new("Player 1", 1, "X")
player2 = Player.new("Player 2", 2, "O")

def game()
    puts "Welcome to Tic-Tac-Toe!  The first player to reach 3 in a row wins!"


end
