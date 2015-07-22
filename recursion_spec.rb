require_relative 'recursion'

describe 'The Recursion Game' do
	let(:game) {Game.new([" "," "," "," "],[" "," "," ","$"])}

	describe '#initialize' do
		it 'should expect to create a board' do
			expect(game.board).to eq(["X"," "," "," "],
									 [" "," "," ","$"])
		end

		it 'should return a hash for position' do 
			expect(game.position).to be_a(Hash)
		end

	end

	describe '#update_board' do 
		it 'should increment x coordinate' do 
			expect(game.update_board([["X"," "," "," "],["X"," "," ","$"]],"D")).to eq([[" ","X"," "," "],[" "," "," ","$"]])
		end
	end

  

end
