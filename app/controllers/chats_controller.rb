class ChatsController < ApplicationController
  load_and_authorize_resource

  def index
    @chats = current_user.chats
  end

  def new
    @chat = current_user.sent_chats.build
    @trainers = User.trainers.where('id != ?', current_user.id)
    @users = User.users.where('id != ?', current_user.id)
  end

  def show
  end

  def create
    if @chat.save
      redirect_to user_chats_path(current_user), success: 'Message sent successfully.'
    else
      redirect_to new_user_chat_path(current_user), flash: { error: @chat.errors.full_messages }
    end
  end

  def edit
  end

  def update
  end

  def destroy
    if @chat.delete
      redirect_to user_chats_path(current_user), success: 'Message deleted.'
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:message, :sender_id, :receiver_id)
  end
end
