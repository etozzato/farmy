require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  respond_to :json

  def index
    head :ok
  end

end
