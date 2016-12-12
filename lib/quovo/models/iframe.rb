module Quovo
  module Models
    class Sync < Base
      using Quovo::Refinements::Cast

      fields %i(
        token
        user
      )
    end
  end
end
