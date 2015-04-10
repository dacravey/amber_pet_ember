class Api::MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def index
    render json: Message.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Message sent!"
      redirect_to messages_path
    else
      render 'new'
    end
  end

  def show
    render json: Message.find(params[:id])
  end

  def edit
    render json: Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end
