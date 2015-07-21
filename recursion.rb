require 'pry'

class Game

	attr_reader :board, :position

	def initialize(board)
		@position = {x: 0}
		@board = create_board(board)
	end

	def create_board(board)
		board[position[:x]] = "X"
	end

	def update_board(board,input)
		board[positioon[:x]] = 'X'
		if input == "A"
			board[position[:x]+1] = " "
		elsif input == "D"
			board[position[:x]-1] = " "
		end
	end

	def play_game(full_board=@board)
		move = validate_move(gets_move)
		update_board(board,move)
		p print_board
		play_game(board)
	end

	def gets_move
		print "Press A/D/W/X to move your piece! "
		gets.chomp.upcase!
	end

	def validate_move(move)
		if move != "A" && move != "D" && move != "W" && move != "Z"
			puts "Sorry, please choose a valid position"
			binding.pry
			validate_move(gets_move)
		end
		if move == "A"
			validate_move(gets_move) if position[:x] - 1 < 0
		elsif move == "D"
			validate_move(gets_move) if position[:x] + 1 > board.length
		end
		move_to_position(move)
		move
	end

	def move_to_position(input)
		if input == "D"
			position[:x]+=1
		elsif input == "A"
			position[:x]-=1
		end
		# input
	end

	def print_board
		board.each {|line| line}
	end


end

a = Game.new([" "," "," ","$"])
a.play_game
