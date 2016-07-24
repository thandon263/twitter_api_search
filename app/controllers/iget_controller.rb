class IgetController < ApplicationController
  def index
        client = Twitter::REST::Client.new do |config|
        config.consumer_key        = "MUEYXHNFYmEuJr60kZMrPP0Dn"
        config.consumer_secret     = "iJqh6KYRTOs9OdWn6lqSDGVYn8ddIIOfjznPUpgyhvLWS3cMk6"
        config.access_token        = "4892852285-uOQQOAR7BcF2aJI05ZZVnZXkiMcCjAtdRLf2pIX"
        config.access_token_secret = "SDk2O29zq3cdyzM6jr7Wro39u3CSJu5sHB3WoZytFw9C1"
      end
      @tweets = client.search("raptors", result_type: "recent").take(7).collect do |tweet|
                "#{tweet.user.screen_name}: #{tweet.text}"
                end
  end
end
