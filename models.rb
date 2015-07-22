class Game

	def initialize(board)
		@position = {x: 0}
		@board = create_board(board)
	end

	def create_board(board)
		board[position[:x]] = "X"
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

end