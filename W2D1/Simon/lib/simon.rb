class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

	def initialize
		@sequence_length = 1 
		@game_over = false
		@seq = Array.new
  end

	def play
		require_sequence
		show_sequence

		until game_over 
			take_turn

			round_success_message
			add_random_color
			@sequence_length += 1
			
		end
		game_over_message 
		reset_game
	
		

  end

	def take_turn
		
	
			

  end

  def show_sequence
		add_random_color
  end

  def require_sequence
		@seq
  end

  def add_random_color
		color = COLORS.sample
		@seq << color
  end

  def round_success_message
		puts "Success!"
  end

  def game_over_message
		puts "Game Over"
  end

  def reset_game
		@sequence_length = 1 
		@game_over = false
		@seq = Array.new
  end
end
