class SlackController < ApplicationController
  
  def index
    
  end

  def handle_payload
    debugger 
    case params[:command]
    when '/rootly'
      case params[:text]
      when /^declare\s+(.+)/i
        incident_title = $1
        payload = request.body.read
        
        # Parse other parameters (description, severity, etc.)
        # Create incident in the database and Slack channel
        # Send modal dialog to capture incident details
      when 'resolve'
        # Check if in dedicated incident channel
        # Update incident status to resolved and calculate resolution time
        # Send response back to channel
      end
    end
  end

end
