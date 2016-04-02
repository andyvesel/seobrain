require 'rubygems'
require 'open-uri'

# requests
url = 'http://api.seobrain.ru/v1/projects?apiKey=d602c8a1-922e-4663-adad-c8cd6e891cde'
doc = open(url)

doc.each do |k|
  k = k.split(/\W+/)
  puts k
end
# positiions
# http://api.seobrain.ru/v1/projects/amvzjvb1/positions?apiKey=d602c8a1-922e-4663-adad-c8cd6e891cde
