class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :category_id, :content, :image).merge(user_id: current_user.id)
  end
end
