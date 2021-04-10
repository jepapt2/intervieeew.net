require 'twitter'

namespace :twitter do
    task :tweet => :environment do
      twitter_client
      @a = Answer.order('id desc').first
      @client.update(@a.title)
    end
end


def twitter_client
  @client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV['twitter_api_key']
    config.consumer_secret = ENV['twitter_api_secret']
    config.access_token = ENV['twitter_access_token']
    config.access_token_secret = ENV['twitter_access_token_secret']
  end
end
