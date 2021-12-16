class SuggestionsController < ApplicationController
  def index
    @questions = Question.includes(:user).order('created_at DESC') #確認
  end

  def create
    suggestion = Suggestion.create(suggestion_params)
    redirect_to root_path
  end
  
end
