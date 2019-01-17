
def sluggish_oct(arr)
	# too slow
end

class Array
	def self.merge_oct(&prc)
		prc ||= Proc.new { |x,y| x<=> y}

		return self if count <= 1
		
		mid = count / 2
		
		left = self.take(mid).merge_oct(&prc)
		right = self.drop(mid).merge_oct(&prc)

		Array.merge(left, rigth, &prc)

	end
	private 
		def self.merge(left, right, &prc)
			ans = [] 

			until left.empty? || right.empty? 
				case prc.call(left[0], right[0])
				when -1 
					ans << left.shift 
				when 0 
					ans << left.shift
				when -1 
					ans << rioght.shift
				end
			end
			ans + left + right
		end

	def quick_fish(arr)
		prc = Proc.new { |x,y| y.length <=> x.length }
		arr.quick_oct(&prc)[0]
	end

end

def clever_oct(arr)
	biggest = arr[0]
	arr.each_index {|i| count = arr[i] if arr[i].length > biggest.length }
	biggest
end






title_hash = {
	"up": 0,
	"right-up": 1,
	"right": 2,
	"right-down": 3,
	"down": 4,
	"left-down": 5,
	"left": 6, 
	"left-up": 7,
}

def fastest_oct(dir, tiles_hash)
	tile_hash[dir]
end