require 'pry-byebug'




class Player
    attr_accessor :name, :board_marker
    def initialize(name, player_number, board_marker)
        @name = name
        @player_number = player_number
        @board_marker = board_marker
    end

    def turn
        puts "It is your turn!  Please type in the number representing the position you would like to place your mark."
        player_position = gets
        player_position = player_position.chomp
    end

end

class Computer < Player

def turn
    puts "It is your opponent's turn!  Please wait for them to make their decision."
    sleep 5
    computer_position = rand(1..9).to_s
end

end

player1 = Player.new("Player 1", 1, "X")
player2 = Computer.new("Player 2", 2, "O")
player_turn = player1.turn
computer_turn = player2.turn



def game()




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


    puts "Welcome to Tic-Tac-Toe!  You will be competing against a computer opponent.  The first player to reach 3 in a row wins!"
    ##binding.pry
    display_gameboard(gameboard)
    sleep 2
    coin_toss

end


def coin_toss()
    puts "Are you ready to begin?  Type heads or tails to determine who goes first."
    choice = gets
    choice = choice.chomp
    choice = choice.downcase

    if choice.eql?('heads') || choice.eql?('tails')
        puts "You chose #{choice}.  Let's toss the coin."
        sleep 2
        coin_land = rand(1..2)
        if coin_land == 1 && choice == 'heads'
            puts "Congratulations, the coin landed on heads.  You win!  You go first."
            player_turn
        elsif coin_land == 2 && choice == 'heads'
            puts "I'm sorry, the coin landed on tails.  Your opponent goes first."
            computer_turn
        elsif coin_land == 1 && choice == 'tails'
            puts "I'm sorry, the coin landed on heads.  Your opponent goes first."
            computer_turn
        elsif coin_land == 2 && choice == 'tails'
            puts "Congratulations, the coin landed on tails.  You win!  You go first."
            player_turn
        end
    elsif !choice.eql?('heads') || !choice.eql?('tails')
            puts "Let's start over, please choose heads or tails"
            coin_toss()
    end
end

def display_gameboard(array)
    p array[0]
    p array[1]
    p array[2]
end



game()
