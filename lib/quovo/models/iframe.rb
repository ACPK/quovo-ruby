module Quovo
  module Models
    class Iframe < Base
      using Quovo::Refinements::Cast

      fields %i(
        token
        user
      )

      undef :token
      def token
        "https://www.quovo.com/index.php?action=remoteauth&u=#{@user}&k=#{@token}"
      end
    end
  end
end
