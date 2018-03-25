class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_filter :basic

  #before_filter :basic_authentication unless Rails.env.development?

  private
  def basic
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'user' && pass == 'pass'
    end
  end
end
