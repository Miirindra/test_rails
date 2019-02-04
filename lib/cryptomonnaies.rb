require 'rubygems'
require 'nokogiri'
require 'open-uri' 

PAGE_URL = "https://coinmarketcap.com/all/views/all/"

page = Nokogiri::HTML(open(PAGE_URL))

symbol = page.xpath('//td[@class="text-left col-symbol"]')
price = page.xpath('//a[@class="price"]')

# récupération des symbol
_symbol = []
symbol.each do |a|
	_symbol << a.text
end

# récupération des prix
_price = Array.new
price.each do |b|
	_price << b.text
end

# assemblage ou association {symbol => prix} dans un hash
mon_hash = Hash[_symbol.zip(_price)]
puts mon_hash