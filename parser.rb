class Parser
  
  def read_file
    file = File.open('config.txt', 'r')
    url = file.read
    @page_data = open(url)
  end

  def parse_positions
    @page_data.class
    @page_data.each do |content|
      @@positions = content.scan(/\b\d{1,2}\b/)
      x = JSON.parse(content)
      x['groups']['13686']['positions'].each do |position|
        ap position
      end
    end
  end

end