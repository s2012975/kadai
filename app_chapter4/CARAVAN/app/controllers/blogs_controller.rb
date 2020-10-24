class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def crete
    blog = Blog.new(blog_params)
    blog.save
    redirect_to ("/")
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
