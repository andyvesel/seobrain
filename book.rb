class Book < Parser

  def initialize
    @book_data = RubyXL::Parser.parse('1.xlsx')
  end

  def write_data
    sheet = @book_data.worksheets[0].to_a
    sheet.each do |s|
      begin
        puts s.cells[0].value
      rescue
        NoMethodError
      end
    end
    # sheet[1][1].change_contents(@@positions[0])
    # @book_data.write
  end

end
