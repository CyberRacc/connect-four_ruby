# frozen_string_literal: true

require_relative '../lib/connect_four'

describe ConnectFour do
  describe '#initialize' do
    it 'creates a new ConnectFour object' do
      game = ConnectFour.new
      expect(game).to be_an_instance_of(ConnectFour)
    end
  end
end
