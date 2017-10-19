class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :destroy] 
  
  before_action :verify_access, only: [:index, :show, :destroy]

  def index
    @messages = Message.all
  end

  def show
  end

  def new
    @message = Message.new
  end

  def create 
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "Votre message a été envoyé! Je vous répondrai dans les meilleurs délais."
      redirect_to controller: 'statics', action: 'home'
    else
      render 'new'
    end
  end

  def destroy
    @message.delete
    flash[:success] = "Message successfully deleted"
    redirect_to controller: 'messages', action: 'index'
  end


  private
  
  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:user, :content, :from)
  end

  def verify_access
    if !logged_in?
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
