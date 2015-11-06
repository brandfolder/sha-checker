class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :verify_token!

  private

  def verify_token!
    authenticate_or_request_with_http_token do |token, *|
      token == ENV['TOKEN']
    end
  end
end
