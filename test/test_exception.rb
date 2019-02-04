begin
  # Any exceptions in here... 
  1/0
rescue ZeroDivisionError => e
	puts "Exception Class: #{ e.class.name }"
  puts "Exception Message: #{ e.message }"
  puts "Exception Backtrace: #{ e.backtrace }"
  # ...will cause this code to run
  # puts "Got an exception, but I'm responding intelligently!"
  # do_something_intelligent()
end
