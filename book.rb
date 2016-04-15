class Book

  def initialize
    @book_data = RubyXL::Parser.parse('1.xlsx')
  end

  def write_data
    sheet = @book_data.worksheets[0]
    p sheet[1][2]
  end

end