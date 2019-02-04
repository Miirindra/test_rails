require 'rubygems'
require 'nokogiri'
require 'open-uri' 

class Scrapper
  
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  ville = page.xpath('//a[@class="lientxt"]/@href') 
  _ville = []
  ville.each do |a|
      _ville << a.text
  end

  _commune = Array.new
  commune = page.xpath('//a[@class="lientxt"]')
  commune.each do |v|
      _commune << v.text
  end

  _mail = []
  ville.each do |add_mail|
      page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{add_mail}"))
          add_mail = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
          _mail << add_mail.text
  end

  $tab_ville = Hash[_commune.zip(_mail)]

#puts tab_ville
end

scp = Scrapper.new
puts scp.tab_ville