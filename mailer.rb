class Mailer
  
  def connect
    Mail.deliver do
      from     'andyvesel@ya.ru'
      to       'andyvesel@yandex.ru'
      subject  'Here is the image you wanted'
      body     'Hi'
      add_file '1.xlsx'
    end
  end

  def mail
    Mail.new do
      from     'andyvesel@ya.ru'
      to       'andyvesel@.yandex.ru'
      subject  'Hello, bitch!!'
      body     'Hello!!!!'
      add_file '1.xlsx'
    end
  end

end