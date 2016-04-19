class Mailer
  
  def mail
    mail = Mail.new do
      from     'andyvesel@ya.ru'
      to       'andyvesel@yandex.ru'
      subject  'Here is the image you wanted'
      body     'Hello'
      add_file :filename => '1.xlsx', :content => File.read('1.xlsx')
    end

    mail.delivery_method :sendmail

    mail.deliver
  end

end