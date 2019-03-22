require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://npb.jp/bis/teams/rst_c.html'))





doc.css('.rosterPlayer').each do |f|
    player_number =  f.css('td:eq(1)').inner_text
    player_name = f.css('td:eq(2)').inner_text
    player_birthday = f.css('td:eq(3)').inner_text
    player_height = f.css('td:eq(4)').inner_text
    player_weight = f.css('td:eq(5)').inner_text
    player_dominant_hand = f.css('td:eq(6)').inner_text
    player_batting = f.css('td:eq(7)').inner_text

   puts "選手番号 #{player_number} 選手名 #{player_name} 生年月日 #{player_birthday} 身長 #{player_height} 体重 #{player_weight} 投げる方 #{player_dominant_hand} きき打ち #{player_batting}"
end




