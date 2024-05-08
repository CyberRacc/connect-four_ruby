# frozen_string_literal: true

# ConnectFour class for game logic
class ConnectFour
  attr_reader :board

  def initialize
    @board = Array.new(6) { Array.new(7, ' ') }
  end
end
