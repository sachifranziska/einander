class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @question = Question.new
  end

end
