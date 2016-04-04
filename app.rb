require 'rubygems'
require 'open-uri'

file = File.open('config.txt', 'r')
content = file.read
url = open(content)

url.each do |k|
  k = k.scan(/\b\d{1,2}\b/)
  p k
end