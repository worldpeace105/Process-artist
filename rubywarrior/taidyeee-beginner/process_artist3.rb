require 'ruby-processing'
class ProcessArtist < Processing::App

  def setup
    background(0, 0, 0)
  end

  def draw
    # Do Stuff
  end

  def mouse_pressed
  fill (123,123,123)
  rect(mouse_x, mouse_y, 10, 20)

  end

end

ProcessArtist.new(:width => 800, :height => 800,
  :title => "ProcessArtist", :full_screen => false)

