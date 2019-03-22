require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://npb.jp/bis/teams/rst_c.html'))





doc.css('.rosterPlayer').each do |f|
    player_number =  f.css('td:eq(1)').inner_text
    player_name = f.css('td:eq(2)').inner_text

   puts "選手番号 #{player_number} 選手名 #{player_name}"
end




