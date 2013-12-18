Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, TWITTER_KEY, TWITTER_SECRET
  provider :github, GITHUB_ID, GITHUB_SECRET
  provider :facebook, FACEBOOK_KEY, FACEBOOK_SECRET,
            :scope => 'email,user_birthday,read_stream,name', :display => 'popup'
  provider :linked_in, CONSUMER_KEY, CONSUMER_SECRET
end