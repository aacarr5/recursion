# require 'pry'

class Game

	attr_reader :board, :position

	def initialize(board)
		@position = {x: 0}
		@board = create_board(board)
	end

	def create_board(board)
		board[position[:x]] = "X"
		board
	end

	def play_game
		validate_move(gets_move)
		create_board(board)
		p print_board
	end

	def gets_move
		print "Press 'D' to move your piece!"
		move = gets.chomp
	end

	def validate_move(move)
		move = move.upcase
		if move != "A" || move != "D" || move != "W" || move != "Z" 
			puts "Sorry, please choose a valid position" 
			gets_move
		end
		move_to_position(move)
	end

	def move_to_position(input)
		# binding.pry
		if input == "D"
			gets_move if position[:x] >= board.first.length - 1
			position[:x]+=1
		end
	end

	def print_board
		board.each {|line| line}
	end

	# def update_board
	# end



end

a = Game.new([" "," "," ","$"])
a.play_game