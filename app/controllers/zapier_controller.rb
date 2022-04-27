class ZapierController < ApplicationController

  def subscribe
    hook_url = params[:hookUrl]
    hook_type = 'message'
    hook = Hook.create(
      account_id: "12334",
      user_id: current_user.id,
      hook_type: hook_type,
      url: hook_url
    )
    render json: {id: hook.id}, status: :ok
  end


  def unsubscribe
    hook_id = params[:hook_id]
    Hook.destroy(hook_id)
    render json: {success: true}, status: :ok
  end
end
