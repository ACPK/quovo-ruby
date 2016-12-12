module Quovo
  module Api
    def brokerages
      @brokerages ||= Quovo::Api::Brokerages.new
    end

    def accounts
      @accounts ||= Quovo::Api::Accounts.new
    end

    def challenges
      @challenges ||= Quovo::Api::Challenges.new
    end

    def portfolios
      @portfolios ||= Quovo::Api::Portfolios.new
    end

    def users
      @users ||= Quovo::Api::Users.new
    end

    def iframe
      @iframe ||= Quovo::Api::Iframe.new
    end


    def webhooks
      @webooks ||= Quovo::Api::Webhooks.new
    end

    def positions
      @positions ||= Quovo::Api::Positions.new
    end

    def history
      @history ||= Quovo::Api::History.new
    end
  end
end
