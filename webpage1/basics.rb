require 'sinatra' 

#!/usr/bin/ruby -w

time1 = Time.new

puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect

get "/form" do
	erb :form
end

get "/hello/:name" do
	params[:name]
end

get "/more/*" do
	params[:splat]
end

get "/" do  
  "Hello, World!"  
end  

get "/about" do
	"MY NAME IS TAI"
end