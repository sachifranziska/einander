class SuggestionsController < ApplicationController
  def index
    @questions = Question.includes(:user).order('created_at DESC')
  end

  def create
    suggestion = Suggestion.create(suggestion_params)
    redirect_to "/questions/#{suggestion.question.id}" 
  end

  private
  def suggestion_params
    params.require(:suggestion).permit(:content).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
