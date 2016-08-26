class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :verify_token!

  def home
    render text: "Brandfolder SHA Checker for BF-FastPass™"
  end

  private

  def verify_token!
    authenticate_or_request_with_http_token do |token, *|
      token == ENV['TOKEN']
    end
  end
end
