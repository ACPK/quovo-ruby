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
    end
  end
end
