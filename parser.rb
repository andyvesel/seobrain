class Parser
  
  def read_file
    file = File.open('config.txt', 'r')
    url = file.read
    @page_data = open(url)
  end

  def parse_positions
    @page_data.each do |content|
    @@positions = content.scan(/\b\d{1,2}\b/)
    end
  end

end