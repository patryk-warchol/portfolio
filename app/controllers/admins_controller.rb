class AdminsController < ApplicationController

  before_action do |controller|
    if !logged_in?
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def home
  end

end
