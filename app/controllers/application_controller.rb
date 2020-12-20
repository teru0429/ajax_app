class ApplicationController < ActionController::Base
  before_action :basic_auth


  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == EMV["BASIC_AUTH_USER"] && password == EMV["BASIC_AUTH_PASSWORD"]
    end
  end
end
