require 'rubygems'
require 'open-uri'
require 'rubyXL'

file = File.open('config.txt', 'r')
content = file.read
url = open(content)

url.each do |k|
  k = k.scan(/\b\d{1,2}\b/)
  p k
end

workbook = RubyXL::Parser.parse('1.xlsx')
worksheet = workbook.worksheets[0]
puts worksheet[1][1]