require 'mail'
mail = Mail.new do
    from ''# 送信元メールアドレスを入力
    to   ''# 送信先メールアドレスを入力
    subject ''# メールタイトルを入力
    body ''# メールの本文を入力
  end

options = { :address => '',# address名 例:gmailの場合 smtp.gmail.com
            :port => 587,# ポート番号
            :domain => '',# domain名 例:gmail.com
            :user_name => '',# 送信元のメールアドレス
            :password => '',# 送信元のメールアドレスのパスワード
            :authentication => :plain,
            :enable_starttls_auto => true
          }
mail.charset = 'utf-8'
mail.delivery_method(:smtp, options)
mail.deliver
