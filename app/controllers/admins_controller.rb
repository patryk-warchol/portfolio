class AdminsController < ApplicationController

  before_action :verify_access

  def home
    @message_count = Message.count
  end

  def verify_access
    if !logged_in?
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
