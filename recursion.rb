# require 'pry'

class Game

	attr_reader :board, :position

	def initialize(board)
		@position = {x: 0,y: 0}
		@board = create_board(board)
	end

	def create_board(board)
		board[position[:y]][position[:x]] = "X"
		board
	end

	def update_board(board,move)
		board[position[:x]] = 'X'
		if move == "A"
			board[position[:x]+1] = " "
		elsif move == "D"
			board[position[:x]-1] = " "
		end
		# board
	end

	def play_game(full_board=@board)
		# if self.position == 
		move = validate_move(gets_move)
		update_board(board,move)
		p print_board
		play_game(board)
	end

	def gets_move
		print "Press A/D/W/Z to move your piece! "
		gets.chomp.upcase
		# ans
	end

	def validate_move(move)
		if move != "A" && move != "D" && move != "W" && move != "Z"
			puts "Sorry, please choose a valid position"
			validate_move(gets_move)
		end
		if move == "A"
			validate_move(gets_move) if position[:x] - 1 < 0
		elsif move == "D"
			validate_move(gets_move) if position[:x] + 1 > board.first.length
		elsif move == 'W'
			validate_move(gets_move) if position[:y] - 1 < 0
		elsif move == 'Z'
			validate_move(gets_move) if position[:y] + 1 > board.length
		end
		move_to_position(move)
		move
	end

	def move_to_position(input)
		if input == "D"
			position[:x]+=1
		elsif input == "A"
			position[:x]-=1
		elsif input == 'W'
			position[:y]+=1
		else
			position[:y]-=1
		end
		# input
	end

	def print_board
		board.each {|line| line}
	end


end

a = Game.new(([" "," "," "," "],[" "," "," ","$"]))
# a.play_game
