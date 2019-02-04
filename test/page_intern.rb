require 'rubygems'
require 'nokogiri'
def format
	puts '-' * 20
end

page = Nokogiri::HTML(open("index.html"))   
# puts page.class   # => Nokogiri::HTML::Document
format

puts page.css("title")[0].name   # => title
puts page.css("title")[0].text   # => My webpage
format

links = page.css("a")
puts links.length   # => 7
puts links[0].text   # => Click here
puts links[0]["href"] # => http://www.google.com
format