class SlackController < ApplicationController
  
  def index
    
  end

  def handle_payload
    payload = JSON.parse(request.body.read)
    # Process the payload as needed
    
    response_message = payload[:challenge]
    
    render json: response_message, status: :ok
  end
end
