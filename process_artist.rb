require 'ruby-processing'
class ProcessArtist < Processing::App

  	def setup
              background 0, 0, 0 
  	end

  	def draw
      if@i.nil? || @i == 200
        @i = 0  
        @i = rand(666)

         fill (20,34,45)
         rect (200, 200, 200, 200) 
      end 


 	end

  def un_command(command)
   
    if command.start_with?("b")
      color = command [1..-1]
      colors = color.split(",")
      background(colors[0].to_i, colors[1].to_i, colors[2].to_i) 
    end
  end

   	def key_pressed
      puts "Running Command #{command}"
      if @queue.nil?
      @queue = ""
    end
    if key != "\n"
    @queue = @queue + key 
  else warn "Time to run the command: #{@queue}" 
    @queue = ""
  end

  	 	warn "A key was pressed! #{key.inspect}"
   	end	
    
end

ProcessArtist.new(:width => 800, :height => 800,
  :title => "ProcessArtist", :full_screen => false)

