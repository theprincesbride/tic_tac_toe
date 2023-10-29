require 'pry-byebug'


def game()

  player1 = Player.new("Player 1", 1, "X")
  player2 = Computer.new("Player 2", 2, "O", ['1', '2', '3', '4', '5', '6', '7', '8', '9'])


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
  display_gameboard(gameboard)
  sleep 2
  turn = coin_toss
  loop do
    if turn == "player_turn"
        p "--------------"
        display_gameboard(gameboard_positions_sample)
        player_choice = player1.turn
        if player_choice == "1" && board_position1 == "-"
            gameboard[0].shift
            gameboard[0].unshift("X")
            board_position1 = "X"
            player2.choices.delete('1')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "2" && board_position2 == "-"
            gameboard[0].delete_at(1)
            gameboard[0].insert(1, "X")
            board_position2 = "X"
            player2.choices.delete('2')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "3" && board_position3 == "-"
            gameboard[0].pop
            gameboard[0].push("X")
            board_position3 = "X"
            player2.choices.delete('3')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "4" && board_position4 == "-"
            gameboard[1].shift
            gameboard[1].unshift("X")
            board_position4 = "X"
            player2.choices.delete('4')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "5" && board_position5 == "-"
            gameboard[1].delete_at(1)
            gameboard[1].insert(1, "X")
            board_position5 = "X"
            player2.choices.delete('5')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "6" && board_position6 == "-"
            gameboard[1].pop
            gameboard[1].push("X")
            board_position6 = "X"
            player2.choices.delete('6')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "7" && board_position7 == "-"
            gameboard[2].shift
            gameboard[2].unshift("X")
            board_position7 = "X"
            player2.choices.delete('7')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "8" && board_position8 == "-"
            gameboard[2].delete_at(1)
            gameboard[2].insert(1, "X")
            board_position8 = "X"
            player2.choices.delete('8')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        elsif player_choice == "9" && board_position9 == "-"
            gameboard[2].pop
            gameboard[2].push("X")
            board_position9 = "X"
            player2.choices.delete('9')
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "computer_turn"

        else
            puts "Please choose an empty position between 1 and 9."
            turn = "player_turn"
        end

    elsif turn == "computer_turn"
        computer_choice = player2.turn
        if computer_choice == "1" && board_position1 == "-"
            gameboard[0].shift
            gameboard[0].unshift("O")
            board_position1 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"
        elsif computer_choice == "2" && board_position2 == "-"
            gameboard[0].delete_at(1)
            gameboard[0].insert(1, "O")
            board_position2 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"

        elsif computer_choice == "3" && board_position3 == "-"
            gameboard[0].pop
            gameboard[0].push("O")
            board_position3 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"

        elsif computer_choice == "4" && board_position4 == "-"
            gameboard[1].shift
            gameboard[1].unshift("O")
            board_position4 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"
        elsif computer_choice == "5" && board_position5 == "-"
            gameboard[1].delete_at(1)
            gameboard[1].insert(1, "O")
            board_position5 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"
        elsif computer_choice == "6" && board_position6 == "-"
            gameboard[1].pop
            gameboard[1].push("O")
            board_position6 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"
        elsif computer_choice == "7" && board_position7 == "-"
            gameboard[2].shift
            gameboard[2].unshift("O")
            board_position7 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"
        elsif computer_choice == "8" && board_position8 == "-"
            gameboard[2].delete_at(1)
            gameboard[2].insert(1, "O")
            board_position8 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"

        elsif computer_choice == "9" && board_position9 == "-"
            gameboard[2].pop
            gameboard[2].push("O")
            board_position9 = "O"
            display_gameboard(gameboard)
            result = check_game_condition(gameboard)
            game_status(result)
            turn = "player_turn"
        else
            puts "Computer to reroll."
            turn = "computer_turn"
        end
    end
end
end


def coin_toss()
    puts "Are you ready to begin?  Type heads or tails to determine who goes first."
    choice = gets
    choice = choice.chomp.downcase

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
            puts "Let's start over, please choose heads or tails."
            coin_toss()
    end
end

def display_gameboard(array)
    p array[0]
    p array[1]
    p array[2]
end

def check_game_condition(array)
    position1 = array[0][0]
    position2 = array[0][1]
    position3 = array[0][2]
    position4 = array[1][0]
    position5 = array[1][1]
    position6 = array[1][2]
    position7 = array[2][0]
    position8 = array[2][1]
    position9 = array[2][2]
    if position1 == "X" && position2 == "X" && position3 == "X"
        return "player_win"
    elsif position1 == "X" && position5 == "X" && position9 == "X"
        return "player_win"
    elsif position1 == "X" && position4 == "X" && position7 == "X"
        return "player_win"
    elsif position2 == "X" && position5 == "X" && position8 == "X"
        return "player_win"
    elsif position3 == "X" && position6 == "X" && position9 == "X"
        return "player_win"
    elsif position3 == "X" && position5 == "X" && position7 == "X"
        return "player_win"
    elsif position4 == "X" && position5 == "X" && position6 == "X"
        return "player_win"
    elsif position7 == "X" && position8 == "X" && position9 == "X"
        return "player_win"
    elsif position1 == "O" && position2 == "O" && position3 == "O"
        return "computer_win"
    elsif position1 == "O" && position5 == "O" && position9 == "O"
        return "computer_win"
    elsif position1 == "O" && position4 == "O" && position7 == "O"
        return "computer_win"
    elsif position2 == "O" && position5 == "O" && position8 == "O"
        return "computer_win"
    elsif position3 == "O" && position6 == "O" && position9 == "O"
        return "computer_win"
    elsif position3 == "O" && position5 == "O" && position7 == "O"
        return "computer_win"
    elsif position4 == "O" && position5 == "O" && position6 == "O"
        return "computer_win"
    elsif position7 == "O" && position8 == "O" && position9 == "O"
        return "computer_win"
    elsif position1 != "-" && position2 != "-" && position3 != "-" && position4 != "-" && position5 != "-" && position6 != "-" && position7 != "-" && position8 != "-" && position9 != "-"
        return "tie"
    else
        return "continue"
    end
end

def game_status(result)
    if result == "continue"

    elsif result == "player_win"
        puts "Congratulations!  You won against your opponent!"
        puts "W---(^_^)---W"
        sleep 2
        puts "Do you want to start a new game?"
        loop do
        game_choice = gets
        game_choice = game_choice.chomp.downcase
        if game_choice == "yes" || game_choice == "y"
            puts "Yay!  You chose to play a new game!"
            game()
        elsif game_choice == "no" || game_choice == "n"
            puts "Thank you for playing tic-tac-toe.  Have a great day!"
            exit
        else
            puts "Do you want to play again?  Type yes, no, y or n."
        end
        end
    elsif result == "computer_win"
        puts "I'm sorry, you lost against your opponent!"
        puts "m---(v_v)---m"
        sleep 2
        puts "Do you want to start a new game?"
        loop do
        game_choice = gets
        game_choice = game_choice.chomp.downcase
        if game_choice == "yes" || game_choice == "y"
            puts "Yay!  You chose to play a new game!"
            game()
        elsif game_choice == "no" || game_choice == "n"
            puts "Thank you for playing tic-tac-toe.  Have a great day!"
            exit
        else
            puts "Do you want to play again?  Type yes, no, y or n."
        end
        end
    elsif result == "tie"
        puts "You tied with your opponent"
        puts "m---(-_-)---m"
        sleep 2
        puts "Do you want to start a new game?"
        loop do
        game_choice = gets
        game_choice = game_choice.chomp.downcase
        if game_choice == "yes" || game_choice == "y"
            puts "Yay!  You chose to play a new game!"
            game()
        elsif game_choice == "no" || game_choice == "n"
            puts "Thank you for playing tic-tac-toe.  Have a great day!"
            exit
        else
            puts "Do you want to play again?  Type yes, no, y or n."
        end
        end
    end
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
    attr_accessor :name, :board_marker, :choices
    def initialize(name, player_number, board_marker, choices)
        @name = name
        @player_number = player_number
        @board_marker = board_marker
        @choices = choices
    end


def turn
    puts "It is your opponent's turn!  Please wait for them to make their decision."
    sleep 5
    computer_position = @choices.sample
    @choices.delete(computer_position)
    computer_position
end

end

game()
