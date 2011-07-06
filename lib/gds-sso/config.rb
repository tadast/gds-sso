module GDS
  module SSO
    module Config
      # Name of the User class
      mattr_accessor :user
      @@user = "User"

      # OAuth ID
      mattr_accessor :oauth_id

      # OAuth Secret
      mattr_accessor :oauth_secret

      # Location of the OAuth server
      mattr_accessor :oauth_root_url
      @@oauth_root_url = "http://localhost:3001"

      def self.user_klass
        user.to_s.constantize
      end
    end
  end
end