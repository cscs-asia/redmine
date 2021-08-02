config.log_level = :warn

config.session_store(
  :cookie_store,
  :key => '_redmine_session',
  :secure => true,
  :path => config.relative_url_root || '/',
  :same_site => :lax
)

config.action_dispatch.default_headers = {
  'X-Frame-Options' => 'SAMEORIGIN',
  'X-XSS-Protection' => '1; mode=block',
  'X-Content-Type-Options' => 'nosniff'
}