class Player

	
	def play_turn(warrior)
  		@warrior = warrior

  	
  			elsif should_walk?
  					@warrior.walk!
  			elsif should_rest?
  					@warrior.rest!
  			elsif should_attack
  					@warrior.attack!
  			end
  			@last_turn_hps = @warrior.health
  	end
  	def should
  	def should_rescue_backwards?
  		@captives_rescued.to_i == 0
  	end 
  	def should_rescue?
  		!space? && @warrior.feel.captive 
  	end 
  
  	def should_walk?
  		space? && (!need_rest? || being_attacked?)
  	end 
  	
  	def should_rest
  		space? && need_rest? && !being_attacked?
  	end 
  	def should_attack
  		!space?
  	end
  
  	def being_attacked?
  		if @warrior.health < @last_turn_hps.to_i
  			being attacked = true
  		else
  			being attacked = false 
  		end
  		puts "Being attacked? {being_attacked}"
  		@last_turn_hps = @warrior.health
  		return being_attacked
  	end
  	
  	def space?
  		@warrior.feel(:backward).empty?
  	end
  	
  	def need_rest?
  		@warrior.health <= 12
  	end
  end


		end
end