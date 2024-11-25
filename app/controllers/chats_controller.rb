class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
    @question = Question.new
    @questions = @chat.questions
  end

  def new
    @chat = Chat.new
  end

  def create
    Chat.create(chat_params)
    redirect_to questions_path
  end

  private
  def chat_params
    params.require(:chat).permit(:title, :content, :name)
  end
end

