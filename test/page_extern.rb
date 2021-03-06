require 'rubygems'
require 'nokogiri'
require 'open-uri' # we include it(open-uri),If the webpage is live on a remote site ike http://en.wikipedia.org/

PAGE_URL = "http://ruby.bastardsbook.com/chapters/html-parsing/"
page = Nokogiri::HTML(open(PAGE_URL))   

puts page.css("title")[0].name   # => title
puts page.css("title")[0].text   # => Parsing HTML with Nokogiri | The Bastards Book of Ruby
