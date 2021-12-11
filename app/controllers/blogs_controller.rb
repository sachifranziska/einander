class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_blog, only: [:show, :edit, :update]
  before_action :move_to_index, only: [:edit, :destroy]

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blog_path(@blog.id)
    else
      render :edit
    end
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to root_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :category_id, :content, :image).merge(user_id: current_user.id)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def move_to_index
    blog = Blog.find(params[:id])
    redirect_to root_path unless current_user.id == blog.user_id
  end
end
