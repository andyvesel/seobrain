class Book < Parser

  def initialize
    @book_data = RubyXL::Parser.parse('1.xlsx')
  end

  def write_data
    sheet = @book_data.worksheets[0]
    sheet.sheet_name = 'Cool New Name'
    sheet[1][0].change_contents(@@positions[1])
    @book_data.write
  end

end