module Zapier
  class Message < Zapier::Base
    def call_operation
      HTTParty.post('https://hooks.zapier.com/hooks/catch/12401615/bzvbjzq/', body: params)
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