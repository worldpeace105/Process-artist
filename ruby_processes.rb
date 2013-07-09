require 'ruby-processing'
class ProcessArtist < Processing::App

	def setup
		background(0, 0, 0)
		@size = 10 
		@queue = ""
	end

	def draw
    # Do Stuff
end

def mouse_pressed
	warn "The mouse was pressed"
end

def mouse_dragged
	fill rand(134),rand(134),rand(134)
	case @shape
	when "s1" then rect(mouse_x, mouse_y, @size, @size)
	when "s2" then rect(mouse_x, mouse_y, @size * 2, @size * 2)
	else 
		warn "I don't know that command"
		rect(mouse_x, mouse_y, @size, @size)
	end
end

def mouse_released
	warn "The mouse was released"
end

def key_pressed
	warn "A key was pressed! #{key.inspect}"
	if !key.is_a?(String)
		warn "That wasn't a key!"
		return
	end

	if key == "+"
		warn "You pressed plus"
		@size += 10
	elsif key == "-"
		warn "You pressed minus"
		@size -= 10 
	elsif key != "\n"
		@queue += key
	else
		warn "Time to run the command: #{@queue}"
		run_command(@queue)
		@shape = @queue.chomp 
		@queue = ""
	end
	def run_command
		(command)
		puts "Running Command #{command}"
		if command.start_with?("b")
			color = command[1..-1]
			colors_split = color.split(",")
			background(colors_split[0].to_i, colors_split[1].to_i, colors_split[2].to_i)
		end
	end
end



end

ProcessArtist.new(:width => 800, :height => 800,
	:title => "ProcessArtist", :full_screen => false)

