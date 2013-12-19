Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :github, ENV['GITHUB_ID'], ENV['GITHUB_SECRET']
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
            :scope => 'email,user_birthday,read_stream,name', :display => 'popup'
  provider :linked_in, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end