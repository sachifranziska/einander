class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_question, only: [:show, :edit, :update]
  before_action :move_to_index, only: [:edit, :destroy]

  def index
    @questions = Question.includes(:user).order('created_at DESC')
    @blogs = Blog.includes(:user).order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @suggestion = Suggestion.new
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to question_path(@question.id)
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to root_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :category_id, :content).merge(user_id: current_user.id)
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def move_to_index
    question = Question.find(params[:id])
    redirect_to action: :index unless current_user.id == question.user_id
  end
end
