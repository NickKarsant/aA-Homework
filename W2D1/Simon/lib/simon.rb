class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

	def initialize
		@sequence_length = 1 
		@game_over = false
		@sequence = []
  end

	def play
		
		until game_over 
			take_turn
		end
		game_over_message 
		reset_game

  end

	def take_turn
		
	
			

  end

  def show_sequence

  end

  def require_sequence

  end

  def add_random_color
		@sequence << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game

  end
end
