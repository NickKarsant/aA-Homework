class Board
  attr_accessor :cups



	def initialize(name1, name2)
		@name1 = name1
		@name2 = name2 
		@cups = place_stones	
		render
	end
	

	def [](pos) 
		row, col = pos
		@board[row][col]
	end

	def []=(pos, val)
		row, col = pos
		@board[row][col] = val
	end

  def place_stones
	 	stores = Array.new(14) {[:stone, :stone, :stone, :stone]}
		stores[6] = []
		stores[13] = []
		stores
  end
# "invalid move" if store cup or out of scope

# "empty cup" error if selected cup is empty
  def valid_move?(start_pos)
		if start_pos == 13 
			raise 'Invalid starting cup' 
		elsif start_pos == 6 
			raise 'Invalid starting cup' 
		elsif start_pos.nil?
			raise 'Invalid starting cup' 
		elsif start_pos > 13 || start_pos < 0 
			raise	"Invlaid starting cup"
		end
	

		if cups[start_pos].empty? 
			raise "Starting cup is empty"
		end
	end
		

	def make_move(start_pos, current_player_name)
		case current_player_name
			when @name1 
				nogo == 6
			when @name2 
				nogo == 13
		end

		hand = cups[start_pos].length
		cups[start_pos] = []

		i = 1
		until i > hand
			if (start_pos + i) % 14 == nogo  
				i += 1 
				hand += 1
				next
			end

			cups[(start_pos + i) % 14 ] << :stone
			i+=1
		end

		render 

		next_turn((start_pos_hand) % 14)
		
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

	def one_side_empty?
		return true if @store_cup1.empty? || @store_cup1.empty?
		@cups.each.none? { |x| x.empty?}
	
  end

  def winner
  end
end
