class SuggestionsController < ApplicationController
  def index
    @questions = Question.includes(:user).order('created_at DESC')
  end

  def create
    @question = Question.find(params[:id])
    Suggestion.create(suggestion_params)
    redirect_to question_path(@question.id)
  end

end
