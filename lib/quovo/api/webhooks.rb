module Quovo
  module Api
    class Webhooks < Base
      using Quovo::Refinements::Cast
      using Quovo::Refinements::Require
      using Quovo::Refinements::Permit

      def all
        api(:get, '/webhooks')
          .fetch('webhooks')
          .cast(Webhook)
      end

      def create(params)
        params.require!(:is_active, :name, :secret, :url)
        api(:post, '/webhooks', params)
          .fetch('webhook')
          .cast(Webhook)
      end

      def delete(params)
        params.require!(:name)
        api(:delete, "/webhooks", params)
      end

    end
  end
end
