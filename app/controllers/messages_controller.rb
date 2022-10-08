class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.find_or_create_by(contact_email: message_params[:contact_email])
    if @message.update(message_params)
      redirect_to success_messages_path
    else
      flash[:errors] = @message.errors.full_messages
      render :new
    end
  end

  def success

  end

  private
  def message_params
    params.require(:message).permit(:contact_name, :contact_email, :message_body, :message_subject, :contact_phone)
  end
end
