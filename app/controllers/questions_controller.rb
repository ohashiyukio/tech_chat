class QuestionsController < ApplicationController

  def create
    Question.create(question_params)
    redirect_to chat_path(params[:chat_id]) 
  end

  private
  def question_params
    params.require(:question).permit(:content, :name).merge(chat_id: params[:chat_id])
  end

end