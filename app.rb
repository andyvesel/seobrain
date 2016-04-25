require 'rubygems'
require 'open-uri'
require 'rubyXL'
require 'mail'
require 'json'
require 'awesome_print'

require_relative 'parser'
require_relative 'book'
require_relative 'mailer'

parser = Parser.new
parser.read_file
parser.parse_positions

book = Book.new
book.write_data

# mailer = Mailer.new
# mailer.mail
