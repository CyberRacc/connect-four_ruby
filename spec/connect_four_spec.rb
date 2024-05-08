# frozen_string_literal: true

# Test driven development (TDD) is a development approach where you write tests for functionality
# before actually implementing it.

# The TDD cycle involves three stages:

# 1. Red: Write a test that describes an expected functionality. Run the test, which should fail
# since the functionality isn't implemented yet (hence the name "red").

# 2. Green: Write or modify just enough code to make the test pass ("Green").

# 3. Refactor: Clean up the code without changing its behavior. This is an optional step, but important.

require_relative '../lib/connect_four'

describe ConnectFour do
  describe '#initialize' do
    it 'creates a board with 6 rows and 7 columns' do
      game = ConnectFour.new
      expect(game.board.size).to eq(6)
      expect(game.board.all? { |row| row.size == 7 }).to be true
    end
  end

  describe '#drop_piece' do
    it 'drops a piece in the correct column' do
      game = ConnectFour.new
      game.drop_piece(1, 'X')
      expect(game.board[5][0]).to eq('X')
    end
  end
end
