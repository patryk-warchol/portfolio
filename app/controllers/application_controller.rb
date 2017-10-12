class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action do |controller|
    @links = Link.all
  end

end
