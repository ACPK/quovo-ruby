module Quovo
  module Models
    class Webhook < Base
      fields %i(
        events
        is_active
        name
        secret
        url
      )

      undef :opened
      def opened
        @opened.to_time
      end

      undef :updated
      def updated
        @updated.to_time
      end
    end
  end
end
