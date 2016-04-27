class Parser

  def initialize
    @@positions = []
  end
  
  def read_file
    file = File.open('config.txt', 'r')
    url = file.read
    @page_info = open(url)
  end

  def parse_positions
    
    page_data = @page_info.to_a.compact
    
    page_data.each do |content|
      
      x = JSON.parse(content)
      
      x['groups']['13686']['positions'].each do |arr|
        hash = arr[1]
        pos = hash['yandex']["#{Time.now.strftime('%d%m%Y')}"]['position']
        @@positions << pos
      
      end
      
      @@positions.map! { |el|
        if(el == 1000)
          "-"
        else
          el
        end
      }
    end
  end
end