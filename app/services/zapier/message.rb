module Zapier
  class Message < Zapier::Base
    def call_operation
      HTTParty.post(Rails.application.credentials.zapier_catch_url, body: params)
    end

    def params
      { 
        message: resource.message,
        user_id: resource.user.id,
        api_key: resource.user.api_key
      }
    end
  end
end