get 'oauth_by_google', :to => 'google_oauth#oauth_by_google'
get 'oauth2callback', :to => 'google_oauth#oauth_google_callback', :as => 'oauth_google_callback'
