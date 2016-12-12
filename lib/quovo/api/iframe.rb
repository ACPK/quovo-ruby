module Quovo
  module Iframe
    class History < Base
      using Quovo::Refinements::Cast
      using Quovo::Refinements::Require
      using Quovo::Refinements::Permit

      def for_user(id, params = {})
        id.require!(as: :id)
        api(:post, "/v2/users/#{id}/iframe_token")
          .fetch('iframe_token')
          .cast(Iframe)
      end

    end
  end
end
