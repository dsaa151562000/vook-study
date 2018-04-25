class Admin::HomeController < ApplicationController
  before_action :basic, only: :index

  def index
  	
  end

  private

  def basic
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'user' && pass == 'pass'
    end
  end

end
