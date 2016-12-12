module Quovo
  module Models
    class Iframe < Base
      using Quovo::Refinements::Cast

      fields %i(
        token
        user
      )
    end
  end
end
