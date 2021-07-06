require 'uri'

module Helpers
  module Hoster
    def allowed_host_for? url
      return unless url
      hostname = Setting.host_name
      return unless hostname
      begin
        URI.parse(url).host != hostname
      rescue URI::Error => e
        return true
      end
    end
  end
end