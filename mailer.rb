class Mailer
  
  def mail
    t = Time.now
    mail = Mail.new do
      from     'andyvesel@ya.ru'
      to       'andyvesel@yandex.ru'
      subject  'Позиции 9216001.spb.ru'
      body     "Добрый день. Высылаю отчет по позициям 9216001.spb.ru за 0#{t.month}.#{t.year}"
      add_file :filename => '1.xlsx', :content => File.read('1.xlsx')
    end

    mail.delivery_method :sendmail

    mail.deliver
  end

end