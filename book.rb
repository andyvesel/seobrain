class Book < Parser

  def initialize
    @book_data = RubyXL::Parser.parse('1.xlsx')
  end

  def write_data
    sheet = @book_data.worksheets[0]
    
    sheet.add_cell(1, 1, "#{@@positions[0]}")
    sheet.add_cell(2, 1, "#{@@positions[1]}")
    sheet.add_cell(3, 1, "#{@@positions[2]}")
    sheet.add_cell(4, 1, "#{@@positions[3]}")
    sheet.add_cell(5, 1, "#{@@positions[4]}")
    sheet.add_cell(6, 1, "#{@@positions[5]}")
    sheet.add_cell(7, 1, "#{@@positions[6]}")
    sheet.add_cell(8, 1, "#{@@positions[7]}")
    sheet.add_cell(9, 1, "#{@@positions[8]}")
    sheet.add_cell(10, 1, "#{@@positions[9]}")
    sheet.add_cell(11, 1, "#{@@positions[10]}")
    sheet.add_cell(12, 1, "#{@@positions[11]}")
    sheet.add_cell(13, 1, "#{@@positions[12]}")
    sheet.add_cell(14, 1, "#{@@positions[13]}")
    sheet.add_cell(15, 1, "#{@@positions[14]}")
    sheet.add_cell(16, 1, "#{@@positions[15]}")
    sheet.add_cell(17, 1, "#{@@positions[16]}")
    sheet.add_cell(18, 1, "#{@@positions[17]}")
    sheet.add_cell(19, 1, "#{@@positions[18]}")
    sheet.add_cell(20, 1, "#{@@positions[19]}")
    sheet.add_cell(21, 1, "#{@@positions[20]}")
    sheet.add_cell(22, 1, "#{@@positions[21]}")
    sheet.add_cell(23, 1, "#{@@positions[22]}")

    sheet.change_column_font_name(1, 'Arial')
    sheet.change_column_horizontal_alignment(1, 'center')

    @book_data.write
  end
end