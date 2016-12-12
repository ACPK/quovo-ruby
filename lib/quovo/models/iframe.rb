module Quovo
  module Models
    class Iframe < Base
      using Quovo::Refinements::Cast

      fields %i(
        url
        token
        user
      )

      def url
        "https://www.quovo.com/index.php?action=remoteauth&u=#{@user}&k=#{@token}"
      end
    end
  end
end
