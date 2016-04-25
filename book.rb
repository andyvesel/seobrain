class Book < Parser

  def initialize
    @book_data = RubyXL::Parser.parse('1.xlsx')
  end

  def write_data
    
    sheet = @book_data.worksheets[0].to_a
    cells = []
    p sheet([0][0]..[2][0])
    # sheet.each do |row|
      
    #   # cells << row.cells[1] 
    #   # puts cells
      
    #   row.cells.each do |cell|
    #     p cell[]#.each {|c| p c.class}
    #   end
    #   # @book_data.write
    # end
  end

end
# arr1.map.with_index {|x, index| index == 1 ? arr2[index] : arr1[index] }