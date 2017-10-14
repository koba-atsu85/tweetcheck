#tweet取得の基本クラス
class TwipakuBase

  require "twitter"

  def initialize
  	@config = YAML.load_file("#{Rails.root}/config/twitter.yml")[Rails.env]
  end

  def client
  	client = Twitter::REST::Client.new do |config|
      # applicationの設定
      config.consumer_key         = @config['consumer_key']
      config.consumer_secret      = @config['consumer_secret']
      # ユーザー情報の設定
      config.access_token         = @config['access_token']
      config.access_token_secret  = @config['access_secret']
    end
  end

  def search(id)
  	client.search("#{id} #{keyword}", lang: "ja")
  end


  private

  def keyword
	@config['keyword']
  end

end
