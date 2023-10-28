require 'pry-byebug'


def game()

  player1 = Player.new("Player 1", 1, "X")
  player2 = Computer.new("Player 2", 2, "O")


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
  turn = coin_toss
  loop do
  if turn == "player_turn"
    display_gameboard(gameboard_positions_sample)
    player_choice = player1.turn
    if player_choice == "1" && board_position1 == "-"
        gameboard[0].shift
        gameboard[0].unshift("X")
        display_gameboard(gameboard)
        check_game_condition(gameboard)
        ##turn == "computer_turn"

    elsif player_choice == "2" && board_position2 == "-"
        gameboard[0].delete_at(1)
        gameboard[0].insert(1, "X")
        display_gameboard(gameboard)
        check_game_condition(gameboard)
        ##computer turn
    elsif player_choice == "3" && board_position3 == "-"


    elsif player_choice == "4" && board_position4 == "-"

    elsif player_choice == "5" && board_position5 == "-"

    elsif player_choice == "6" && board_position6 == "-"

    elsif player_choice == "7" && board_position7 == "-"

    elsif player_choice == "8" && board_position8 == "-"

    elsif player_choice == "9" && board_position9 == "-"

    else
        puts "Please choose an empty position between 1 and 9."
        turn == "player_turn"
    end
  elsif turn == "computer_turn"
    computer_choice = player2.turn
    if computer_choice == "1" && board_position1 == "-"
        gameboard[0].shift
        gameboard[0].unshift("O")
        display_gameboard(gameboard)
        check_game_condition(gameboard)
        turn == "player_turn"
    elsif computer_choice == "2" && board_position2 == "-"
        gameboard[0].delete_at(1)
        gameboard[0].insert(1, "O")
        display_gameboard(gameboard)
        check_game_condition(gameboard)
        turn == "computer_turn"

    elsif computer_choice == "3" && board_position3 == "-"

    elsif computer_choice == "4" && board_position4 == "-"

    elsif computer_choice == "5" && board_position5 == "-"

    elsif computer_choice == "6" && board_position6 == "-"

    elsif computer_choice == "7" && board_position7 == "-"

    elsif computer_choice == "8" && board_position8 == "-"

    elsif computer_choice == "9" && board_position9 == "-"

    end
end

  end

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
            return "player_turn"
        elsif coin_land == 2 && choice == 'heads'
            puts "I'm sorry, the coin landed on tails.  Your opponent goes first."
            return "computer_turn"
        elsif coin_land == 1 && choice == 'tails'
            puts "I'm sorry, the coin landed on heads.  Your opponent goes first."
           return "computer_turn"
        elsif coin_land == 2 && choice == 'tails'
            puts "Congratulations, the coin landed on tails.  You win!  You go first."
           return "player_turn"
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

def check_game_condition(array)
    board_position1 = array[0][0]
    board_position2 = array[0][1]
    board_position3 = array[0][2]
    board_position4 = array[1][0]
    board_position5 = array[1][1]
    board_position6 = array[1][2]
    board_position7 = array[2][0]
    board_position8 = array[2][1]
    board_position9 = array[2][2]

end


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

game()
