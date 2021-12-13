class SuggestionsController < ApplicationController
  def index
    @questions = Question.includes(:user).order('created_at DESC')
  end
end
