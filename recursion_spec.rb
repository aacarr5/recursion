require_relative 'recursion'

describe 'The Recursion Game' do
	let(:game) {Game.new([" "," "," ","$"])}

	describe '#initialize' do
		it 'should expect to create a board' do
			expect(game.board).to eq(["X"," "," ","$"])
		end
	end

  # describe '#validate_move'

end
