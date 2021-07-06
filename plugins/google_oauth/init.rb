require 'redmine'
require_dependency 'google_oauth/hooks'

Redmine::Plugin.register :google_oauth do
  name 'Redmine Google OAuth Plugin'
  author 'CSCS.asia'
  description 'This is a plugin for Redmine registration through google'
  version '0.0.1'
  url 'https://cscs.asia'
  author_url 'https://cscs.asia'

  settings :default => {
    :client_id => "",
    :client_secret => "",
    :oauth_autentification => false,
    :allowed_domains => ""
  }, :partial => 'settings/google_settings'
end
