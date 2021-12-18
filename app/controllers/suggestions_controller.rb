class SuggestionsController < ApplicationController
  def index
    @questions = Question.includes(:user).order('created_at DESC')
  end

  def create
    @question = Question.find(params[:question_id])
    @suggestion = @question.suggestions.new(suggestion_params)
    @suggestion.save
    redirect_to root_path

    # suggestion = Suggestion.create(suggestion_params)
    # redirect_to "/questions/#{suggestion.question.id}" 
  end

  private
  def suggestion_params
    params.require(:suggestion).permit(:content).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
